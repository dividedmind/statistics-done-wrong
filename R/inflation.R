samples = rnorm(5000, mean=1)

png('../plots/inflation.png', 
    width=600, height=400, pointsize=16)
hist(samples, breaks=40, freq=FALSE, col=c(rep(0,30), rep("gray73", 10)),
     main="", xlab="Observed effect size", ylab="Probability", las=1)
abline(v=3, lty=2)
dev.off()

pdf('../plots/inflation.pdf', 
    width=4, height=3, pointsize = 10)
hist(samples, breaks=40, freq=FALSE, col=c(rep(0,30), rep("gray73", 10)),
     main="", xlab="Observed effect size", ylab="Probability", las=1)
abline(v=3, lty=2)
dev.off()
