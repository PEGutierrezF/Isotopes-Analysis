
##### https://cran.r-project.org/web/packages/simmr/vignettes/simmr.html


library("simmr")
library("readxl")
library("backports")

setwd("D:/LTER/Manuscript 2019 Stable Isotopes/Isotopes-Analysis/SIMMR QPB")

##### QPB February 2017 #####

targets = read_excel("QPBFeb17.xlsx",1)
sources = read_excel("QPBFeb17.xlsx",2)
TEFs <- read_excel("QPBFeb17.xlsx",3)


QPBFeb17Biplot = simmr_load(mixtures = as.matrix(targets[, 1:2]),
                            source_names = sources$Sources,
                            source_means = sources[,2:3],
                            source_sds = sources[,4:5],
                            correction_means = TEFs[,2:3],
                            correction_sds = TEFs[,4:5],
                            group = as.factor(paste('Group', targets$Code)))
QPBFeb17Biplot
plot(QPBFeb17Biplot, group = 1:12)

QPBFeb17_out = simmr_mcmc(QPBFeb17Biplot)
summary(QPBFeb17_out,type='statistic', group = c(1:10))
summary(QPBFeb17_out,type='quantiles', group = c(1:10))


######## QPB November 2017 


targets = read_excel("QPBNov17.xlsx",1)
sources = read_excel("QPBNov17.xlsx",2)
TEFs <- read_excel("QPBNov17.xlsx",3)

QPBNOV17Biplot = simmr_load(mixtures = as.matrix(targets[, 1:2]),
                            source_names = sources$Sources,
                            source_means = sources[,2:3],
                            source_sds = sources[,4:5],
                            correction_means = TEFs[,2:3],
                            correction_sds = TEFs[,4:5],
                            group = as.factor(paste('Group', targets$Code)))
QPBNOV17Biplot
plot(QPBNOV17Biplot, group = 1:13)

QPBNOV17_out = simmr_mcmc(QPBNOV17Biplot)
summary(QPBNOV17_out,type='statistic', group = c(1:11))
summary(QPBNOV17_out,type='quantiles', group = c(1:11))


####### June 2018 #####

targets = read_excel("QPBJune18.xlsx",1)
sources = read_excel("QPBJune18.xlsx",2)
TEFs <- read_excel("QPBJune18.xlsx",3)


QPBJune18Biplot = simmr_load(mixtures = as.matrix(targets[, 1:2]),
                             source_names = sources$Sources,
                             source_means = sources[,2:3],
                             source_sds = sources[,4:5],
                             correction_means = TEFs[,2:3],
                             correction_sds = TEFs[,4:5],
                             group = as.factor(paste('Group', targets$Code)))
QPBJune18Biplot
plot(QPBJune18Biplot, group = 1:13)

QPBJune18_out = simmr_mcmc(QPBJune18Biplot)
summary(QPBJune18_out,type='statistic', group = c(1:11))
summary(QPBJune18_out,type='quantiles', group = c(1:11))


##### QPB February 2019 #####

targets = read_excel("QPBFeb19.xlsx",1)
sources = read_excel("QPBFeb19.xlsx",2)
TEFs <- read_excel("QPBFeb19.xlsx",3)

QPBFeb19Biplot = simmr_load(mixtures = as.matrix(targets[, 1:2]),
                            source_names = sources$Sources,
                            source_means = sources[,2:3],
                            source_sds = sources[,4:5],
                            correction_means = TEFs[,2:3],
                            correction_sds = TEFs[,4:5],
                            group = as.factor(paste('Group', targets$Code)))
QPBFeb19Biplot
plot(QPBFeb19Biplot, group = 1:11)

QPBFeb19_out = simmr_mcmc(QPBFeb19Biplot)
summary(QPBFeb19_out,type='statistic', group = c(1:11))
summary(QPBFeb19_out,type='quantiles', group = c(1:11))
