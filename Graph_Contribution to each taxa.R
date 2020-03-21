
# https://rpubs.com/nguyet/521181


library(readxl)
library(ggplot2)
library(tidyverse)
library(ggpubr)
library(gridExtra)

setwd("D:/LTER/Manuscript 2019 Stable Isotopes/Isotopes-Analysis")


# QPA Glossomatidae -------------------------------------------------------

GlossosomatidaeQPA = read_excel("Graph _Source contribution.xlsx",1)
GlossosomatidaeQPA

GlossosomatidaeQPA$Data <- factor(GlossosomatidaeQPA$Data, levels=c("6mo pre-", "2mo post-", "9mo post-", "18mo post-"))

A = ggplot(data=GlossosomatidaeQPA, aes(x=Source, y=Value1A, ymin=LowerCI, ymax=UpperCI, color=Data))
A = A + geom_pointrange(aes(col=Source), lwd=1.5) # lwd= line thick 
A = A + geom_hline(aes(fill=Source), yintercept =0.5, linetype=2)
A = A + xlab("") + ylab("Contribution (97.5% Confidence Interval)")
A = A + geom_errorbar(aes(ymin=LowerCI, ymax=UpperCI, col=Source), width=0.5, cex=1)
A = A + facet_wrap(~Data, strip.position="left", nrow=20, scales = "free_y") 
A = A + coord_flip() + theme(legend.position="none")
A = A + scale_colour_manual(values = c('#00BF5F', '#C68550')) #first Biofilm, second Leaf
A
A1 = A +  theme(axis.text.x=element_text(angle=0, size=10, vjust=0.5,hjust=1, color="black"), #subaxis x
                axis.text.y=element_text(angle=0, size=10, vjust=0.5, color="black")) # #subaxis y
A2 = A1 +  theme(strip.text.y = element_text(face="bold", size=10, colour="black")) # Each title white
A3 = A2 +  theme(panel.background = element_blank(),
                 panel.border = element_rect(colour = "black", fill=NA, size=1))
A4 = A3 + theme(axis.text.y   = element_text(size=12))
A5 = A4 + theme(axis.title.x   = element_text(size=12))
A5


# QPA Baetidae ------------------------------------------------------------

BaetidaeQPA = read_excel("Graph _Source contribution.xlsx",3)
BaetidaeQPA

BaetidaeQPA$Data <- factor(BaetidaeQPA$Data, levels=c("6mo pre-", "2mo post-", "9mo post-", "18mo post-"))

C = ggplot(data=BaetidaeQPA, aes(x=Source, y=Value2A, ymin=LowerCI, ymax=UpperCI, color=Data))
C = C + geom_pointrange(aes(col=Source), lwd=1.5) # lwd= line thick 
C = C + geom_hline(aes(fill=Source), yintercept =0.5, linetype=2)
C = C + xlab("") + ylab("Contribution (97.5% Confidence Interval)")
C = C + geom_errorbar(aes(ymin=LowerCI, ymax=UpperCI, col=Source), width=0.5, cex=1)
C = C + facet_wrap(~Data, strip.position="left", nrow=20, scales = "free_y") 
C = C + coord_flip() + theme(legend.position="none")
C = C + scale_colour_manual(values = c('#00BF5F', '#C68550')) #first Biofilm, second Leaf
C
C1 = C +  theme(axis.text.x=element_text(angle=0, size=10, vjust=0.5,hjust=1, color="black"), #subaxis x
                axis.text.y=element_text(angle=0, size=10, vjust=0.5, color="black")) # #subaxis y
C2 = C1 +  theme(strip.text.y = element_text(face="bold", size=10, colour="black")) # Each title white
C3 = C2 +  theme(panel.background = element_blank(),
                 panel.border = element_rect(colour = "black", fill=NA, size=1))
C4 = C3 + theme(axis.text.y   = element_text(size=12))
C5 = C4 + theme(axis.title.x   = element_text(size=12))
C5



# QPA Chironomidae --------------------------------------------------------


ChironomidaeQPA = read_excel("Graph _Source contribution.xlsx",5)
ChironomidaeQPA

ChironomidaeQPA$Data <- factor(ChironomidaeQPA$Data, levels=c("6mo pre-", "2mo post-", "9mo post-", "18mo post-"))

E = ggplot(data=ChironomidaeQPA, aes(x=Source, y=Value3A, ymin=LowerCI, ymax=UpperCI, color=Data))
E = E + geom_pointrange(aes(col=Source), lwd=1.5) # lwd= line thick 
E = E + geom_hline(aes(fill=Source), yintercept =0.5, linetype=2)
E = E + xlab("") + ylab("Contribution (97.5% Confidence Interval)")
E = E + geom_errorbar(aes(ymin=LowerCI, ymax=UpperCI, col=Source), width=0.5, cex=1)
E = E + facet_wrap(~Data, strip.position="left", nrow=20, scales = "free_y") 
E = E + coord_flip() + theme(legend.position="none")
E = E + scale_colour_manual(values = c('#00BF5F', '#C68550')) #first Biofilm, second Leaf
E
E1 = E +  theme(axis.text.x=element_text(angle=0, size=10, vjust=0.5,hjust=1, color="black"), #subaxis x
              axis.text.y=element_text(angle=0, size=10, vjust=0.5, color="black")) # #subaxis y
E2 = E1 +  theme(strip.text.y = element_text(face="bold", size=10, colour="black")) # Each title white
E3 = E2 +  theme(panel.background = element_blank(),
                 panel.border = element_rect(colour = "black", fill=NA, size=1))
E4 = E3 + theme(axis.text.y   = element_text(size=12))
E5 = E4 + theme(axis.title.x   = element_text(size=12))
E5


# QPA Neohagunulus --------------------------------------------------------

NeohagenulusQPA = read_excel("Graph _Source contribution.xlsx",7)
NeohagenulusQPA

NeohagenulusQPA$Data <- factor(NeohagenulusQPA$Data, levels=c("6mo pre-", "2mo post-", "9mo post-", "18mo post-"))

G = ggplot(data=NeohagenulusQPA, aes(x=Source, y=Value4A, ymin=LowerCI, ymax=UpperCI, color=Data))
G = G + geom_pointrange(aes(col=Source), lwd=1.5) # lwd= line thick 
G = G + geom_hline(aes(fill=Source), yintercept =0.5, linetype=2)
G = G + xlab("") + ylab("Contribution (97.5% Confidence Interval)")
G = G + geom_errorbar(aes(ymin=LowerCI, ymax=UpperCI, col=Source), width=0.5, cex=1)
G = G + facet_wrap(~Data, strip.position="left", nrow=20, scales = "free_y") 
G = G + coord_flip() + theme(legend.position="none")
G = G + scale_colour_manual(values = c('#00BF5F', '#C68550')) #first Biofilm, second Leaf
G
G1 = G +  theme(axis.text.x=element_text(angle=0, size=10, vjust=0.5,hjust=1, color="black"), #subaxis x
                axis.text.y=element_text(angle=0, size=10, vjust=0.5, color="black")) # #subaxis y
G2 = G1 +  theme(strip.text.y = element_text(face="bold", size=10, colour="black")) # Each title white
G3 = G2 +  theme(panel.background = element_blank(),
                panel.border = element_rect(colour = "black", fill=NA, size=1))
G4 = G3 + theme(axis.text.y   = element_text(size=12))
G5 = G4 + theme(axis.title.x   = element_text(size=12))
G5


# Phylloicus --------------------------------------------------------------

PhylloicusQPA = read_excel("Graph _Source contribution.xlsx",9)
PhylloicusQPA

PhylloicusQPA$Data <- factor(PhylloicusQPA$Data, levels=c("6mo pre-", "2mo post-", "9mo post-", "18mo post-"))

I = ggplot(data=PhylloicusQPA, aes(x=Source, y=Value5A, ymin=LowerCI, ymax=UpperCI, color=Data))
I = I + geom_pointrange(aes(col=Source), lwd=1.5) # lwd= line thick 
I = I + geom_hline(aes(fill=Source), yintercept =0.5, linetype=2)
I = I + xlab("") + ylab("Contribution (97.5% Confidence Interval)")
I = I + geom_errorbar(aes(ymin=LowerCI, ymax=UpperCI, col=Source), width=0.5, cex=1)
I = I + facet_wrap(~Data, strip.position="left", nrow=20, scales = "free_y") 
I = I + coord_flip() + theme(legend.position="none")
I = I + scale_colour_manual(values = c('#00BF5F', '#C68550')) #first Biofilm, second Leaf
I
I1 = I +  theme(axis.text.x=element_text(angle=0, size=10, vjust=0.5,hjust=1, color="black"), #subaxis x
                    axis.text.y=element_text(angle=0, size=10, vjust=0.5, color="black")) # #subaxis y
I2 = I1 +  theme(strip.text.y = element_text(face="bold", size=10, colour="black")) # Each title white
I3 = I2 +  theme(panel.background = element_blank(),
                    panel.border = element_rect(colour = "black", fill=NA, size=1))
I4 = I3 + theme(axis.text.y   = element_text(size=12))
I5 = I4 + theme(axis.title.x   = element_text(size=12))
I5


# QPA Libellulidae --------------------------------------------------------

LibellulidaeQPA = read_excel("Graph _Source contribution.xlsx",11)
LibellulidaeQPA

LibellulidaeQPA$Data <- factor(LibellulidaeQPA$Data, levels=c("6mo pre-", "2mo post-", "9mo post-", "18mo post-"))

K = ggplot(data=LibellulidaeQPA, aes(x=Source, y=Value6A, ymin=LowerCI, ymax=UpperCI, color=Data))
K = K + geom_pointrange(aes(col=Source), lwd=1.5) # lwd= line thick 
K = K + geom_hline(aes(fill=Source), yintercept =0.5, linetype=2)
K = K + xlab("") + ylab("Contribution (97.5% Confidence Interval)")
K = K + geom_errorbar(aes(ymin=LowerCI, ymax=UpperCI, col=Source), width=0.5, cex=1)
K = K + facet_wrap(~Data, strip.position="left", nrow=20, scales = "free_y") 
K = K + coord_flip() + theme(legend.position="none")
K = K + scale_colour_manual(values = c('#00BF5F', '#C68550')) #first Biofilm, second Leaf
K
K1 = K +  theme(axis.text.x=element_text(angle=0, size=10, vjust=0.5,hjust=1, color="black"), #subaxis x
                axis.text.y=element_text(angle=0, size=10, vjust=0.5, color="black")) # #subaxis y
K2 = K1 +  theme(strip.text.y = element_text(face="bold", size=10, colour="black")) # Each title white
K3 = K2 +  theme(panel.background = element_blank(),
                 panel.border = element_rect(colour = "black", fill=NA, size=1))
K4 = K3 + theme(axis.text.y   = element_text(size=12))
K5 = K4 + theme(axis.title.x   = element_text(size=12))
K5


# QPA Xiphocaris elongata -------------------------------------------------


XiphocarisQPA = read_excel("Graph _Source contribution.xlsx",13)
XiphocarisQPA

XiphocarisQPA$Data <- factor(XiphocarisQPA$Data, levels=c("6mo pre-", "2mo post-", "9mo post-", "18mo post-"))

M = ggplot(data=XiphocarisQPA, aes(x=Source, y=Value7A, ymin=LowerCI, ymax=UpperCI, color=Data))
M = M + geom_pointrange(aes(col=Source), lwd=1.5) # lwd= line thick 
M = M + geom_hline(aes(fill=Source), yintercept =0.5, linetype=2)
M = M + xlab("") + ylab("Contribution (97.5% Confidence Interval)")
M = M + geom_errorbar(aes(ymin=LowerCI, ymax=UpperCI, col=Source), width=0.5, cex=1)
M = M + facet_wrap(~Data, strip.position="left", nrow=20, scales = "free_y") 
M = M + coord_flip() + theme(legend.position="none")
M = M + scale_colour_manual(values = c('#00BF5F', '#C68550')) #first Biofilm, second Leaf
M
M1 = M +  theme(axis.text.x=element_text(angle=0, size=10, vjust=0.5,hjust=1, color="black"), #subaxis x
                axis.text.y=element_text(angle=0, size=10, vjust=0.5, color="black")) # #subaxis y
M2 = M1 +  theme(strip.text.y = element_text(face="bold", size=10, colour="black")) # Each title white
M3 = M2 +  theme(panel.background = element_blank(),
                 panel.border = element_rect(colour = "black", fill=NA, size=1))
M4 = M3 + theme(axis.text.y   = element_text(size=12))
M5 = M4 + theme(axis.title.x   = element_text(size=12))
M5


# QPA Atya  ---------------------------------------------------------------

AtyaQPA = read_excel("Graph _Source contribution.xlsx",15)
AtyaQPA

AtyaQPA$Data <- factor(AtyaQPA$Data, levels=c("6mo pre-", "2mo post-", "9mo post-", "18mo post-"))

O = ggplot(data=AtyaQPA, aes(x=Source, y=Value8A, ymin=LowerCI, ymax=UpperCI, color=Data))
O = O + geom_pointrange(aes(col=Source), lwd=1.5) # lwd= line thick 
O = O + geom_hline(aes(fill=Source), yintercept =0.5, linetype=2)
O = O + xlab("") + ylab("Contribution (97.5% Confidence Interval)")
O = O + geom_errorbar(aes(ymin=LowerCI, ymax=UpperCI, col=Source), width=0.5, cex=1)
O = O + facet_wrap(~Data, strip.position="left", nrow=20, scales = "free_y") 
O = O + coord_flip() + theme(legend.position="none")
O = O + scale_colour_manual(values = c('#00BF5F', '#C68550')) #first Biofilm, second Leaf
O
O1 = O +  theme(axis.text.x=element_text(angle=0, size=10, vjust=0.5,hjust=1, color="black"), #subaxis x
                axis.text.y=element_text(angle=0, size=10, vjust=0.5, color="black")) # #subaxis y
O2 = O1 +  theme(strip.text.y = element_text(face="bold", size=10, colour="black")) # Each title white
O3 = O2 +  theme(panel.background = element_blank(),
                 panel.border = element_rect(colour = "black", fill=NA, size=1))
O4 = O3 + theme(axis.text.y   = element_text(size=12))
O5 = O4 + theme(axis.title.x   = element_text(size=12))
O5


# QPA Macrobrachium -------------------------------------------------------

MacrobrahiumQPA = read_excel("Graph _Source contribution.xlsx",17)
MacrobrahiumQPA

MacrobrahiumQPA$Data <- factor(MacrobrahiumQPA$Data, levels=c("6mo pre-", "2mo post-", "9mo post-", "18mo post-"))

Q = ggplot(data=MacrobrahiumQPA, aes(x=Source, y=Value9A, ymin=LowerCI, ymax=UpperCI, color=Data))
Q = Q + geom_pointrange(aes(col=Source), lwd=1.5) # lwd= line thick 
Q = Q + geom_hline(aes(fill=Source), yintercept =0.5, linetype=2)
Q = Q + xlab("") + ylab("Contribution (97.5% Confidence Interval)")
Q = Q + geom_errorbar(aes(ymin=LowerCI, ymax=UpperCI, col=Source), width=0.5, cex=1)
Q = Q + facet_wrap(~Data, strip.position="left", nrow=20, scales = "free_y") 
Q = Q + coord_flip() + theme(legend.position="none")
Q = Q + scale_colour_manual(values = c('#00BF5F', '#C68550')) #first Biofilm, second Leaf
Q
Q1 = Q +  theme(axis.text.x=element_text(angle=0, size=10, vjust=0.5,hjust=1, color="black"), #subaxis x
                axis.text.y=element_text(angle=0, size=10, vjust=0.5, color="black")) # #subaxis y
Q2 = Q1 +  theme(strip.text.y = element_text(face="bold", size=10, colour="black")) # Each title white
Q3 = Q2 +  theme(panel.background = element_blank(),
                 panel.border = element_rect(colour = "black", fill=NA, size=1))
Q4 = Q3 + theme(axis.text.y   = element_text(size=12))
Q5 = Q4 + theme(axis.title.x   = element_text(size=12))
Q5



# QPA Anolis --------------------------------------------------------------

AnolisQPA = read_excel("Graph _Source contribution.xlsx",19)
AnolisQPA

AnolisQPA$Data <- factor(AnolisQPA$Data, levels=c("6mo pre-", "2mo post-", "9mo post-", "18mo post-"))

S = ggplot(data=AnolisQPA, aes(x=Source, y=Value10A, ymin=LowerCI, ymax=UpperCI, color=Data))
S = S + geom_pointrange(aes(col=Source), lwd=1.5) # lwd= line thick 
S = S + geom_hline(aes(fill=Source), yintercept =0.5, linetype=2)
S = S + xlab("") + ylab("Contribution (97.5% Confidence Interval)")
S = S + geom_errorbar(aes(ymin=LowerCI, ymax=UpperCI, col=Source), width=0.5, cex=1)
S = S + facet_wrap(~Data, strip.position="left", nrow=20, scales = "free_y") 
S = S + coord_flip() + theme(legend.position="none")
S = S + scale_colour_manual(values = c('#00BF5F', '#C68550')) #first Biofilm, second Leaf
S
S1 = S +  theme(axis.text.x=element_text(angle=0, size=10, vjust=0.5,hjust=1, color="black"), #subaxis x
                axis.text.y=element_text(angle=0, size=10, vjust=0.5, color="black")) # #subaxis y
S2 = S1 +  theme(strip.text.y = element_text(face="bold", size=10, colour="black")) # Each title white
S3 = S2 +  theme(panel.background = element_blank(),
                 panel.border = element_rect(colour = "black", fill=NA, size=1))
S4 = S3 + theme(axis.text.y   = element_text(size=12))
S5 = S4 + theme(axis.title.x   = element_text(size=12))
S5


# QPA Leucauge ------------------------------------------------------------


LeucaugeQPA = read_excel("Graph _Source contribution.xlsx",21)
LeucaugeQPA

LeucaugeQPA$Data <- factor(LeucaugeQPA$Data, levels=c("6mo pre-", "2mo post-", "9mo post-", "18mo post-"))

U = ggplot(data=LeucaugeQPA, aes(x=Source, y=Value11A, ymin=LowerCI, ymax=UpperCI, color=Data))
U = U + geom_pointrange(aes(col=Source), lwd=1.5) # lwd= line thick 
U = U + geom_hline(aes(fill=Source), yintercept =0.5, linetype=2)
U = U + xlab("") + ylab("Contribution (97.5% Confidence Interval)")
U = U + geom_errorbar(aes(ymin=LowerCI, ymax=UpperCI, col=Source), width=0.5, cex=1)
U = U + facet_wrap(~Data, strip.position="left", nrow=20, scales = "free_y") 
U = U + coord_flip() + theme(legend.position="none")
U = U + scale_colour_manual(values = c('#00BF5F', '#C68550')) #first Biofilm, second Leaf
U
U1 = U +  theme(axis.text.x=element_text(angle=0, size=10, vjust=0.5,hjust=1, color="black"), #subaxis x
                axis.text.y=element_text(angle=0, size=10, vjust=0.5, color="black")) # #subaxis y
U2 = U1 +  theme(strip.text.y = element_text(face="bold", size=10, colour="black")) # Each title white
U3 = U2 +  theme(panel.background = element_blank(),
                 panel.border = element_rect(colour = "black", fill=NA, size=1))
U4 = U3 + theme(axis.text.y   = element_text(size=12))
U5 = U4 + theme(axis.title.x   = element_text(size=12))
U5




# Graph togeter -----------------------------------------------------------

Figure2 <- ggarrange(A5, C5, E5, G5,I5,K5,M5,O5,Q5,S5,U5,  ncol=3, nrow=4, align = "hv",
                     labels = c("A", "B","C","D","E","F","G","H","I","J","K"),
                     font.label = list(size = 12, color = "black"),
                     common.legend = TRUE, legend="top")
Figure2

