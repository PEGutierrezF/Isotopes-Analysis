
### Usar solo el comando de community.ML <- communityMetricsML() que esta abajo
### Ya esta la matrix de QPA esta arreglada con el orden de FFG que hice para SIMMR.  Pero falta QPB.
### Arreglar los valores que son diferentes
### estos cambios los hice el 13 de enero del 2020

 
install.packages("rjags")
require("rjags")

library("SIBER")

setwd("D:/LTER/Manuscript 2019 Stable Isotopes/Isotopes-Analysis/Layman's community metrics/SIBERQPA")

QPASIBER <- read.csv("QPASIBER.csv", header=T)
QPASIBER <- createSiberObject(QPASIBER)
QPASIBER

##### Groups #####


community.hulls.args <- list(col = 1, lty = 1, lwd = 1)
group.ellipses.args  <- list(n = 100, p.interval = 0.95, lty = 1, lwd = 2)
group.hull.args      <- list(lty = 2, col = "grey20")


plotSiberObject(QPASIBER,
                  ax.pad = 2, 
                  hulls = F, community.hulls.args, 
                  ellipses = T, group.ellipses.args,
                  group.hulls = T, group.hull.args,
                  bty = "L",
                  iso.order = c(1,2),
                  xlab = expression({delta}^13*C~'\u2030'),
                  ylab = expression({delta}^15*N~'\u2030')
                  )

group.ML <- groupMetricsML(QPASIBER)
print(group.ML)


plotSiberObject(QPASIBER,
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

plotSiberObject(QPASIBER,
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


plotGroupEllipses(QPASIBER, n = 100, p.interval = 0.95,
                  ci.mean = T, lty = 1, lwd = 2) 

##########################
##### For community ######
##########################


community.ML <- communityMetricsML(QPASIBER) 
print(community.ML)













