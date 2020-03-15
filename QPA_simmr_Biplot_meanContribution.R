
#### https://cran.r-project.org/web/packages/simmr/vignettes/simmr.html


library("simmr")
library("readxl")
library("backports")

setwd("D:/LTER/Manuscript 2019 Stable Isotopes/Isotopes-Analysis/SIMMR QPA")


# QPA February 2017  ------------------------------------------------------


targets = read_excel("QPAFeb17.xlsx",1)
sources = read_excel("QPAFeb17.xlsx",2)
TEFs <- read_excel("QPAFeb17.xlsx",3)

QPAFeb17Biplot = simmr_load(mixtures = as.matrix(targets[, 1:2]),
                            source_names = sources$Sources,
                            source_means = sources[,2:3],
                            source_sds = sources[,4:5],
                            correction_means = TEFs[,2:3],
                            correction_sds = TEFs[,4:5],
                            group = as.factor(paste('Group', targets$Code)))
QPAFeb17Biplot
plot(QPAFeb17Biplot, group = 1:10)

QPAFeb17_out = simmr_mcmc(QPAFeb17Biplot)
summary(QPAFeb17_out,type='statistic', group = c(1:10))
summary(QPAFeb17_out,type='quantiles', group = c(1:10))




# QPA November 2017 -------------------------------------------------------

targets = read_excel("QPANov17.xlsx",1)
sources = read_excel("QPANov17.xlsx",2)
TEFs <- read_excel("QPANov17.xlsx",3)

QPANOV17Biplot = simmr_load(mixtures = as.matrix(targets[, 1:2]),
                            source_names = sources$Sources,
                            source_means = sources[,2:3],
                            source_sds = sources[,4:5],
                            correction_means = TEFs[,2:3],
                            correction_sds = TEFs[,4:5],
                            group = as.factor(paste('Group', targets$Code)))
QPANOV17Biplot
plot(QPANOV17Biplot, group = 1:11)

QPANOV17_out = simmr_mcmc(QPANOV17Biplot)
summary(QPANOV17_out,type='statistic', group = c(1:11))
summary(QPANOV17_out,type='quantiles', group = c(1:11))



# QPA June 2018 -----------------------------------------------------------


targets = read_excel("QPAJune18.xlsx",1)
sources = read_excel("QPAJune18.xlsx",2)
TEFs <- read_excel("QPAJune18.xlsx",3)

QPAJune18Biplot = simmr_load(mixtures = as.matrix(targets[, 1:2]),
                             source_names = sources$Sources,
                             source_means = sources[,2:3],
                             source_sds = sources[,4:5],
                             correction_means = TEFs[,2:3],
                             correction_sds = TEFs[,4:5],
                             group = as.factor(paste('Group', targets$Code)))
QPAJune18Biplot
plot(QPAJune18Biplot, group = 1:11)

QPAJune18_out = simmr_mcmc(QPAJune18Biplot)
summary(QPAJune18_out,type='statistic', group = c(1:11))
summary(QPAJune18_out,type='quantiles', group = c(1:11))



# QPA February 2019 -------------------------------------------------------


targets = read_excel("QPAFeb19.xlsx",1)
sources = read_excel("QPAFeb19.xlsx",2)
TEFs <- read_excel("QPAFeb19.xlsx",3)

QPAFeb19Biplot = simmr_load(mixtures = as.matrix(targets[, 1:2]),
                            source_names = sources$Sources,
                            source_means = sources[,2:3],
                            source_sds = sources[,4:5],
                            correction_means = TEFs[,2:3],
                            correction_sds = TEFs[,4:5],
                            group = as.factor(paste('Group', targets$Code)))
QPAFeb19Biplot
plot(QPAFeb19Biplot, group = 1:13)

QPAFeb19_out = simmr_mcmc(QPAFeb19Biplot)
summary(QPAFeb19_out,type='statistic', group = c(1:13))
summary(QPAFeb19_out,type='quantiles', group = c(1:13))



