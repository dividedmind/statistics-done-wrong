# Procedures for sequential F testing to build a linear model
# Based on the procedure described to me by Rouzbeh Abbaszadeh, used in his
# paper on using acoustic methods to test watermelon ripeness.

library(MASS)

# response - response vector
# data - data frame of variables
# includeP - a variable must have an F statistic with p less than this to be
#            included in the model
# excludeP - if a variable's p exceeds this, it will be dropped from the model
# maxIter - maximum number of tests
stepF <- function(response, data, includeP, excludeP, maxIter=10) {
  model <- lm(response ~ 1, data=data)
  f <- as.formula(paste0("~ data$", paste(names(data), collapse=" + data$")))
  modelSize <- 0
  updated <- FALSE
  for (i in 1:maxIter) {
    g = addterm(model, f, test="F")
    if (min(g[["Pr(F)"]], na.rm=TRUE) < includeP) {
      model <- update(model, as.formula(paste0("~ . + ", paste0("data$X", which.min(g[["Pr(F)"]]) - 1))))
      modelSize <- modelSize + 1
      updated <- TRUE
    }
    if (modelSize > 0) {
      g = dropterm(model, formula(model), test="F")
      if (max(g[["Pr(F)"]], na.rm=TRUE) > excludeP) {
        model <- update(model, as.formula(paste0("~ . - ", paste0("data$X", which.max(g[["Pr(F)"]]) - 1))))
        modelSize <- modelSize - 1
        updated <- TRUE
      }
    }
    if (!updated) {
      break
    }
    updated <- FALSE
  }
  print(i)
  model
}

makeFakeData <- function(observations, variables) {
  data <- matrix(nrow=observations, ncol=variables)
  for (i in 1:variables) {
    data[,i] <- rnorm(observations)
  }
  data.frame(data)
}

data = makeFakeData(43, 600)
response = runif(43, min=1, max=5)
system.time(thingy <- stepF(response, data, 0.05, 0.1, maxIter=20))
summary(thingy)
