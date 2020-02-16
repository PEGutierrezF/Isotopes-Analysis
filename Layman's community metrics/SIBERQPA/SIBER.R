
### Usar solo el comando de community.ML <- communityMetricsML() que esta abajo
### Ya esta la matrix de QPA esta arreglada con el orden de FFG que hice para SIMMR.  Pero falta QPB.
### Arreglar los valores que son diferentes
### estos cambios los hice el 13 de enero del 2020

 
install.packages("rjags")
require("rjags")

library("SIBER")

setwd("D:/Post Doc/13 Stable Isotopes/Statistical Analysis/Layman's community metrics/SIBERQPB")

QPASIBER.frm=read.csv("QPBSIBER.csv")
attach(QPASIBER.frm)
QPASIBER.frm

QPASIBER <- createSiberObject(QPASIBER.frm)

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

community.ML <- communityMetricsML(QPASIBER) 
print(community.ML)


parms <- list()
parms$n.iter <- 2 * 10^4   # number of iterations to run the model for
parms$n.burnin <- 1 * 10^3 # discard the first set of values
parms$n.thin <- 10     # thin the posterior by this many
parms$n.chains <- 2        # run this many chains

priors <- list()
priors$R <- 1 * diag(2)
priors$k <- 2
priors$tau.mu <- 1.0E-3

ellipses.posterior <- siberMVN(QPASIBER, parms, priors)

mu.post <- extractPosteriorMeans(QPASIBER, ellipses.posterior)



############## Calculado por mes separadamente #####

# FEBRUARY 

QPASIBERFEB.frm=read.csv("QPASIBERResourcesFEB.csv")
attach(QPASIBERFEB.frm)
QPASIBERFEB.frm

shapiro.test(iso1)
shapiro.test(iso2)

QPASIBERFEB <- createSiberObject(QPASIBERFEB.frm)

plotSiberObject(QPASIBERFEB,
                  ax.pad = 2, 
                  hulls = F, community.hulls.args, 
                  ellipses = T, group.ellipses.args,
                  group.hulls = T, group.hull.args,
                  bty = "L",
                  iso.order = c(1,2),
                  xlab = expression({delta}^13*C~'\u2030'),
                  ylab = expression({delta}^15*N~'\u2030')
                  )

laymanMetrics(iso1,iso2)

# NOVEMBER

QPASIBERNOV.frm=read.csv("QPASIBERResourcesNOV.csv")
attach(QPASIBERNOV.frm)
QPASIBERNOV.frm

shapiro.test(iso1)
shapiro.test(iso2)

QPASIBERNOV <- createSiberObject(QPASIBERNOV.frm)

plotSiberObject(QPASIBERNOV,
                  ax.pad = 2, 
                  hulls = F, community.hulls.args, 
                  ellipses = T, group.ellipses.args,
                  group.hulls = T, group.hull.args,
                  bty = "L",
                  iso.order = c(1,2),
                  xlab = expression({delta}^13*C~'\u2030'),
                  ylab = expression({delta}^15*N~'\u2030')
                  )

laymanMetrics(iso1,iso2)

# JUNE

QPASIBERJUNE.frm=read.csv("QPASIBERResourcesJUNE.csv")
attach(QPASIBERJUNE.frm)
QPASIBERJUNE.frm

shapiro.test(iso1)
shapiro.test(iso2)

QPASIBERJUNE <- createSiberObject(QPASIBERJUNE.frm)

plotSiberObject(QPASIBERJUNE,
                  ax.pad = 2, 
                  hulls = F, community.hulls.args, 
                  ellipses = T, group.ellipses.args,
                  group.hulls = T, group.hull.args,
                  bty = "L",
                  iso.order = c(1,2),
                  xlab = expression({delta}^13*C~'\u2030'),
                  ylab = expression({delta}^15*N~'\u2030')
                  )

laymanMetrics(iso1,iso2)

















