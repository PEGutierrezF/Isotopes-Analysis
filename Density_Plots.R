



# Density Plots -----------------------------
# 21 Oct 2020
#PEGF
#--------------------------------------------
#

library(ggplot2)
QPA_G_Feb17 <- read.csv("DensityPlots/QPA_Glossosomatidae_Feb17.csv")
head(QPA_G_Feb17)

g1 <- ggplot(QPA_G_Feb17, aes(x=densty, color=source)) + 
  labs(y="Densty", x="Sorce contribution") +
  geom_density(size=1) +
  scale_color_manual(values=c("#238443", "#225ea8", "#8c2d04")) +
  theme_classic()
g1
