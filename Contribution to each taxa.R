
# https://rpubs.com/nguyet/521181


library("readxl")
library(ggplot2)

setwd("D:/LTER/Manuscript 2019 Stable Isotopes/Isotopes_Analysis_2017_2019")


# Phylloicus --------------------------------------------------------------

Phylloicus = read_excel("Taxa.xlsx",1)
Phylloicus

Phylloicus$Data <- factor(Phylloicus$Data, levels=c("6mo pre-", "2mo post-", "9mo post-", "18mo post-"))

g = ggplot(data=Phylloicus, aes(x=Source, y=Value, ymin=LowerCI, ymax=UpperCI, color=Data))
g = g + geom_pointrange(aes(col=Source), lwd=1.5) # lwd= line thick 
g = g + geom_hline(aes(fill=Source), yintercept =0.5, linetype=2)
g = g + xlab("") + ylab("Contribution (97.5% Confidence Interval)")
g = g + geom_errorbar(aes(ymin=LowerCI, ymax=UpperCI, col=Source), width=0.5, cex=1)
g = g + facet_wrap(~Data, strip.position="left", nrow=20, scales = "free_y") 
g = g + coord_flip() + theme(legend.position="none")
g = g + scale_colour_manual(values = c('#4dd43b', '#5c3b13')) #first Biofilm, second Leaf
g
g1 = g +  theme(axis.text.x=element_text(angle=0, size=10, vjust=0.5,hjust=1, color="black"), #subaxis x
                    axis.text.y=element_text(angle=0, size=10, vjust=0.5, color="black")) # #subaxis y
g2 = g1 +  theme(strip.text.y = element_text(face="bold", size=10, colour="black")) # Each title white
g3 = g2 +  theme(panel.background = element_blank(),
                    panel.border = element_rect(colour = "black", fill=NA, size=1))
g4 = g3 + theme(axis.text.y   = element_text(size=12))
g5 = g4 + theme(axis.title.x   = element_text(size=12))
g5



