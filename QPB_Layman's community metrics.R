
install.packages("rjags")
require("rjags")

#### https://cran.r-project.org/web/packages/SIBER/vignettes/Introduction-to-SIBER.html

library("SIBER")

setwd("D:/LTER/Manuscript 2019 Stable Isotopes/Isotopes-Analysis/Layman's community metrics/SIBERQPB")

QPBSIBER <- read.csv("QPBSIBER.csv", header=T)
QPBSIBER <- createSiberObject(QPBSIBER)
QPBSIBER


##### Groups #####

community.hulls.args <- list(col = 1, lty = 1, lwd = 1)
group.ellipses.args  <- list(n = 100, p.interval = 0.95, lty = 1, lwd = 2)
group.hull.args      <- list(lty = 2, col = "grey20")

par(mfrow=c(1,1))
plotSiberObject(QPBSIBER,
                  ax.pad = 2, 
                  hulls = F, community.hulls.args, 
                  ellipses = T, group.ellipses.args,
                  group.hulls = T, group.hull.args,
                  bty = "L",
                  iso.order = c(1,2),
                  xlab = expression({delta}^13*C~'\u2030'),
                  ylab = expression({delta}^15*N~'\u2030')
                  )


group.ML <- groupMetricsML(QPBSIBER)
print(group.ML)

plotSiberObject(QPBSIBER,
                  ax.pad = 2, 
                  hulls = F, community.hulls.args, 
                  ellipses = F, group.ellipses.args,
                  group.hulls = F, group.hull.args,
                  bty = "L",
                  iso.order = c(1,2),
                  xlab=expression({delta}^13*C~'\u2030'),
                  ylab=expression({delta}^15*N~'\u2030'),
                  cex = 0.5
                  )

plotSiberObject(QPBSIBER,
                  ax.pad = 2, 
                  hulls = T, community.hulls.args, 
                  ellipses = F, group.ellipses.args,
                  group.hulls = F, group.hull.args,
                  bty = "L",
                  iso.order = c(1,2),
                  xlab=expression({delta}^13*C~'\u2030'),
                  ylab=expression({delta}^15*N~'\u2030'),
                  cex = 0.5
                  )


plotGroupEllipses(QPBSIBER, n = 100, p.interval = 0.95,
                  ci.mean = T, lty = 1, lwd = 2) 

##########################
##### For community ######
##########################


community.ML <- communityMetricsML(QPBSIBER) 
print(community.ML)













