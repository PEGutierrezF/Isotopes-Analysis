



# Density Plots -----------------------------
# 21 Oct 2020
#PEGF
#--------------------------------------------
#

library(ggplot2)
library(ggpubr)
QPA_G_Feb17 <- read.csv("DensityPlots/QPA_Glossosomatidae_Feb17.csv")
head(QPA_G_Feb17)


g1 <- ggplot(QPA_G_Feb17, aes(x=densty, color=source)) + 
  labs(y="Densty", x="Sorce contribution") +
  geom_density(aes(linetype = source), size=1.2) +
  scale_color_manual(values=c("#31a354", "#2c7fb8", "#d95f0e")) +
  scale_linetype_manual(values = c("solid", "dotted", "longdash")) +
  theme_classic()
g1
