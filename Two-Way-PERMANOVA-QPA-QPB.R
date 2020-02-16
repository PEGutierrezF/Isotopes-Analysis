
install.packages("ggpubr")

library("vegan")
require(vegan)

setwd("D:/LTER/Manuscript 2019 Stable Isotopes/Isotopes-Analysis/PERMANOVA QPA")


######################### 13 C QPA ##############################

CarbonQPA=read.csv("13CQPA.csv")
CarbonQPA

FactorsQPA=read.csv("FactorsQPA.csv")
FactorsQPA

CarbonQPA1 <- vegdist (CarbonQPA, method = "euclidean", na.rm = T)
CarbonQPA1

adonis2(CarbonQPA1 ~Source*Time, data = FactorsQPA)

######################### 15 N QPA ##############################

NitrogenQPA=read.csv("15NQPA.csv")
NitrogenQPA

FactorsQPA=read.csv("FactorsQPA.csv")
FactorsQPA

NitrogenQPA1<- vegdist (NitrogenQPA, method = "euclidean", na.rm = T)
NitrogenQPA1

adonis2(NitrogenQPA1~Source*Time, data = FactorsQPA)

################################################################

setwd("D:/LTER/Manuscript 2019 Stable Isotopes/Isotopes-Analysis/PERMANOVA QPB")

######################### 13 C QPA ##############################

CarbonQPB=read.csv("13CQPB.csv")
CarbonQPB

FactorsQPB=read.csv("FactorsQPB.csv")
FactorsQPB

CarbonQPB1 <- vegdist (CarbonQPB, method = "euclidean", na.rm = T)
CarbonQPB1

adonis2(CarbonQPB1 ~Source*Time, data = FactorsQPB)

######################### 15 N QPA ##############################

NitrogenQPB=read.csv("15NQPB.csv")
NitrogenQPB

FactorsQPB=read.csv("FactorsQPB.csv")
FactorsQPB

NitrogenQPB1<- vegdist (NitrogenQPB, method = "euclidean", na.rm = T)
NitrogenQPB1

adonis2(NitrogenQPB1~Source*Time, data = FactorsQPB)

#### FIgures #####

IsotopesQPA.frm=read.csv("IsotopesQPA.csv")
attach(IsotopesQPA.frm)
IsotopesQPA.frm

library("ggpubr")
library(ggplot2)
ggboxplot(IsotopesQPA.frm, x = "Time", y = "C", color = "Source",width = 0.7,
          palette = c("#00AFBB","#FC4E07"),size =1,
          order = c("Feb", "Nov", "June"),legend = "right",
          font.legend = c(15, "plain", "black"),
          font.x = c(20, "bold", "black"),font.y = c(20, "bold", "black"),
          font.xtickslab= c(15, "bold", "black"), font.ytickslab= c(15, "bold", "black"))


IsotopesQPB.frm=read.csv("IsotopesQPB.csv")
attach(IsotopesQPB.frm)
IsotopesQPB.frm


library("ggpubr")
library(ggplot2)
ggboxplot(IsotopesQPB.frm, x = "Time", y = "C", color = "Source",width = 0.7,
          palette = c("#00AFBB","#FC4E07"),size =1,
          order = c("Feb", "Nov", "Jun"),legend = "right",
          font.legend = c(15, "plain", "black"),
          font.x = c(20, "bold", "black"),font.y = c(20, "bold", "black"),
          font.xtickslab= c(15, "bold", "black"), font.ytickslab= c(15, "bold", "black"))

windows()
par(mfrow=c(2,2))




