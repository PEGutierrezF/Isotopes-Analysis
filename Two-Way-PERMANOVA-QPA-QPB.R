
install.packages("ggpubr")

library("vegan")
require(vegan)
library(tidyverse)

setwd("D:/LTER/Manuscript 2019 Stable Isotopes/Isotopes-Analysis/PERMANOVA")

# QPA 13 Carbon --------------------------------------------------------------


QPAPermanova=read.csv("PermanovaQPA.csv")
QPAPermanova

####

CarbonQPA <- select(QPAPermanova, QPACarbon)
CarbonQPA

Factors <- select(QPAPermanova, Source, Time)
Factors

CarbonQPA1 <- vegdist (CarbonQPA, method = "euclidean", na.rm = T)
CarbonQPA1

adonis2(CarbonQPA1 ~Source*Time, data = Factors)



# QPA 15 Nitrogen ---------------------------------------------------------

QPANitrogen <- select(QPAPermanova, QPANitrogen)
QPANitrogen

Factors <- select(QPAPermanova, Source, Time)
Factors

NitrogenQPA1<- vegdist (QPANitrogen, method = "euclidean", na.rm = T)
NitrogenQPA1

adonis2(NitrogenQPA1~Source*Time, data = Factors)



# QPB 13 Carbon -----------------------------------------------------------

QPBPermanova=read.csv("PermanovaQPB.csv")
QPBPermanova

####

QPBCarbon <- select(QPBPermanova, QPBCarbon)
QPBCarbon
QPBCarbonNA <- na.omit(QPBCarbon)

Factors <- select(QPBPermanova, Source, Time)
Factors
FactorsNA <- Factors[-30, ]
FactorsNA

CarbonQPB1 <- vegdist (QPBCarbonNA, method = "euclidean", na.rm = T)
CarbonQPB1

adonis2(CarbonQPB1 ~Source*Time, data = FactorsNA)



# QPB 15 Nitrogen ---------------------------------------------------------

QPBNitrogen <- select(QPBPermanova, QPBNitrogen)
QPBNitrogen

Factors <- select(QPBPermanova, Source, Time)
Factors


NitrogenQPB1<- vegdist (QPBNitrogen, method = "euclidean", na.rm = T)
NitrogenQPB1

adonis2(NitrogenQPB1~Source*Time, data = Factors)






