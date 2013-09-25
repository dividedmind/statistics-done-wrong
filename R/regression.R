ages = runif(100, min=5, max=80)
wrinkliness = abs(ages / 16 + rnorm(100, sd=0.5))

png('../plots/regression.png',
    width=600, height=400, pointsize=16)
plot(ages, wrinkliness, las=1, xlab="Age", ylab="Wrinkliness")
dev.off()

cairo_pdf('../plots/regression.pdf',
          width=4, height=3, family="Linux Biolinum O", pointsize=10)
plot(ages, wrinkliness, las=1, xlab="Age", ylab="Wrinkliness")
dev.off()
