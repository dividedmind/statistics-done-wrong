# Procedures for sequential F testing to build a linear model.
# Based on the procedure described to me by Rouzbeh Abbaszadeh, used in his
# paper on using acoustic methods to test watermelon ripeness.
# Note: this simulation is very slow, taking several hours to complete when
# there are 600 variables.

library(MASS)
library(mvtnorm)

# response - response vector
# data - data frame of variables
# includeP - a variable must have an F statistic with p less than this to be
#            included in the model
# excludeP - if a variable's p exceeds this, it will be dropped from the model
# maxIter - maximum number of tests
stepF <- function(response, data, includeP, excludeP, maxIter=10) {
  model <- lm(response ~ 1, data=data)
  # Create formula representing the full model
  f <- as.formula(paste0("~ ", paste(names(data), collapse=" + ")))
  modelSize <- 0
  updated <- FALSE
  for (i in 1:maxIter) {
    mss <- sum(model$fitted.values^2)
    rss <- sum(model$residuals^2)
    if(rss < 1e-10*mss) {
      break; # the model is already perfect
    }
    
    g = addterm(model, f, test="F")
    if (min(g[["Pr(F)"]], na.rm=TRUE) < includeP) {
      model <- update(model, as.formula(paste0("~ . + ", row.names(g)[which.min(g[["Pr(F)"]])])))
      modelSize <- modelSize + 1
      updated <- TRUE
    }
    if (modelSize > 0) {
      g = dropterm(model, formula(model), test="F")
      if (max(g[["Pr(F)"]], na.rm=TRUE) > excludeP) {
        model <- update(model, as.formula(paste0("~ . - ", row.names(g)[which.max(g[["Pr(F)"]])])))
        modelSize <- modelSize - 1
        updated <- TRUE
      }
    }
    if (!updated) {
      break
    }
    updated <- FALSE
  }
  print(modelSize)
  model
}

# Generate deliberately correlated data with common means, using an AR(1)
# covariance matrix.
makeFakeData <- function(observations, variables) {
  variance = 1
  mean = 0
  correlation <- 0.95
  
  sigma <- diag(variables)
  sigma <- variance * correlation^abs(row(sigma)-col(sigma))

  data <- rmvnorm(observations, mean=rep(mean, variables), sigma=sigma)
  
  data.frame(data)
}

data <- makeFakeData(43, 600)
print("Generated fake data")

response <- runif(43, min=1, max=5)

print("Performing stepwise regression")
thingy <- stepF(response, data, 0.05, 0.1, maxIter=40)

print("Stepwise regression result:")
print(summary(thingy)$r.squared)

# Now do R^2 tests when we leave out one item at a time
predresponse <- c()
for (i in 1:length(response)) {
  responseToFit <- response[-i]
  dataToFit <- data[-i,]
  nm <- stepF(responseToFit, dataToFit, 0.05, 0.1, maxIter=40)
  predresponse <- c(predresponse, predict(nm, data[i,]))
  print(cor(response[1:i], predresponse)^2)
}
