

library(ggplot2)
library(tidyverse)
library(ggpubr)
library(gridExtra)

setwd("D:/LTER/Manuscript 2019 Stable Isotopes/Isotopes-Analysis")

Isotopes=read.csv("SourcesGraph.csv")
Isotopes


QPACarbon <- select(Isotopes, Month, Source ,QPACarbon)
QPACarbon

QPANitrogen <- select(Isotopes, Month, Source ,QPANitrogen)
QPANitrogen

# QPA Carbon --------------------------------------------------------------

month<- factor(QPACarbon$Month, levels=c("Feb_2017", "Nov_2017", "June_2018","Feb_2019"),ordered = TRUE) # order labels of x-axis
month

p <- ggplot(data = QPACarbon, aes(y = QPACarbon , x = month, fill = Source)) + geom_boxplot()+
              scale_fill_manual(values=c("#00BF5F", "#C68550"))
p
p2 <- p + labs(x="", y = expression(delta^{13}*"C"))
p2
p3 <- p2 + theme(axis.title.x = element_text(color = "black", size = 14, face = "bold"),
                 axis.title.y = element_text(color = "black", size = 16, face = "bold"))
p3

p4 <- p3 + theme(axis.text.x=element_blank()) #subaxis x
p4
p5 <- p4 + theme(axis.text.y=element_text(angle=0, size=10, vjust=0.5, color="black")) # #subaxis y
p5
p6 <- p5 +theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
                panel.background = element_blank(), axis.line = element_line(size = 0.75,colour = "black"))
p6



# QPA Nitrogen ------------------------------------------------------------

month<- factor(QPANitrogen$Month, levels=c("Feb_2017", "Nov_2017", "June_2018","Feb_2019"),ordered = TRUE) # order labels of x-axis
month

p10 <- ggplot(data = QPANitrogen, aes(y = QPANitrogen , x = month, fill = Source)) + geom_boxplot()+
                        scale_fill_manual(values=c("#00BF5F", "#C68550"))
p10
p11 <- p10 + labs(x="", y = expression(delta^{15}*"N"))
p11
p12 <- p11 + theme(axis.title.x = element_text(color = "black", size = 14, face = "bold"),
                 axis.title.y = element_text(color = "black", size = 16, face = "bold"))
p12

p13 <- p12 + theme(axis.text.x=element_text(angle=0, size=10, vjust=0.5,hjust=1, color="black")) #subaxis x
p13
p14 <- p13 + theme(axis.text.y=element_text(angle=0, size=10, vjust=0.5, color="black")) # #subaxis y
p14
p15 <- p14+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
                panel.background = element_blank(), axis.line = element_line(size = 0.75,colour = "black"))
p15 


# QPB Subgroups -----------------------------------------------------------

QPBCarbon <- select(Isotopes, Month, Source ,QPBCarbon)
QPBCarbon

QPBNitrogen <- select(Isotopes, Month, Source ,QPBNitrogen)
QPBNitrogen


# QPB Carbon --------------------------------------------------------------

month<- factor(QPBCarbon$Month, levels=c("Feb_2017", "Nov_2017", "June_2018","Feb_2019"),ordered = TRUE) # order labels of x-axis
month

p20 <- ggplot(data = QPBCarbon, aes(y = QPBCarbon, x = Month, fill = Source)) + geom_boxplot()+
                    scale_fill_manual(values=c("#00BF5F", "#C68550"))
p20
p21 <- p20 + labs(x="", y = "")
p21
p22 <- p21 + theme(axis.title.x = element_blank(),
                   axis.title.y = element_text(color = "black", size = 12, face = "bold"))
p22

p23 <- p22 + theme(axis.text.x=element_blank()) #subaxis x
p23
p24 <- p23 + theme(axis.text.y=element_text(angle=0, size=10, vjust=0.5, color="black")) # #subaxis y
p24
p25 <- p24+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
                 panel.background = element_blank(), axis.line = element_line(size = 0.75,colour = "black"))
p25 


# QPB Nitrogen ------------------------------------------------------------

month<- factor(QPBNitrogen$Month, levels=c("Feb_2017", "Nov_2017", "June_2018","Feb_2019"),ordered = TRUE) # order labels of x-axis
month

p30 <- ggplot( data = QPBNitrogen, aes(y = QPBNitrogen, x = month, fill = Source)) + geom_boxplot()+
                    scale_fill_manual(values=c("#00BF5F", "#C68550"))
p30
p31 <- p30 + labs(x="", y = "")
p31
p32 <- p31 + theme(axis.title.x = element_text(color = "black", size = 12, face = "bold"),
                   axis.title.y = element_text(color = "black", size = 12, face = "bold"))
p32

p33 <- p32 + theme(axis.text.x=element_text(angle=0, size=10, vjust=0.5,hjust=1, color="black")) #subaxis x
p33
p34 <- p33 + theme(axis.text.y=element_text(angle=0, size=10, vjust=0.5, color="black")) # #subaxis y
p34
p35 <- p34+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
                 panel.background = element_blank(), axis.line = element_line(size = 0.75,colour = "black"))
p35



p6
p25
p15
p35

Figure2 <- ggarrange(p6, p25, p15, p35,  ncol=2, nrow=2, 
                     labels = c("A", "B","C","D"),font.label = list(size = 12, color = "black"),
                     common.legend = TRUE, legend="top")
Figure2

annotate_figure(Figure2,
                bottom = text_grob("Sampling period", rot = 0,
                                 color = "Black", face = "bold", size = 16))

Figure2 + ggsave("Figure 2.TIFF",width=6, height=4,dpi=600)



