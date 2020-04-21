
# Sonadora Stable Isotopes Analysis -----------------------------
# 20 Apr 2020
#PEGF
#--------------------------------------------
#

library("simmr")
library("readxl")
library("backports")


setwd("D:/LTER/Manuscript 2019 Stable Isotopes/Isotopes-Analysis/SIMMR Sonadora")

targets = read_excel("Sonadora2003.xlsx",1)
sources = read_excel("Sonadora2003.xlsx",2)
TEFs <- read_excel("Sonadora2003.xlsx",3)


SonadoraBiplot = simmr_load(mixtures = as.matrix(targets[, 1:2]),
                            source_names = sources$Sources,
                            source_means = sources[,2:3],
                            source_sds = sources[,4:5],
                            correction_means = TEFs[,2:3],
                            correction_sds = TEFs[,4:5],
                            group = as.factor(paste('Group', targets$Code)))
SonadoraBiplot
plot(SonadoraBiplot, group = 1:6)

Sonadora_out = simmr_mcmc(SonadoraBiplot)
summary(Sonadora_out,type='statistic', group = c(1:6))
summary(Sonadora_out,type='quantiles', group = c(1:6))

compare_sources(QPAFeb17_out,source_names=c('LeafLitter','Biofilm'))


