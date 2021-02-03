#8 cm waterhemp
WAT8=read.csv("Data_8.csv")
str(WAT8)

library(drc)
#Test of homogeneity
library(sandwich)
fligner.test(Control~Run, data=WAT8)

plot(Control~ Rate, data = WAT8,las=1,
         xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
         ylab = expression(paste("Weed Control (%)")), type="none",
         xlim=c(0,850), ylim=c(0,100), cex.lab=1.3, font.axis=2, main="21 DAT - Waterhemp 8 cm ")


Callisto<-drm(Control~ Rate, Herbicide, subset = Herbicide =="Callisto", fct=l3 (fixed =c(NA,100,NA)),data=WAT8)
modelFit(Callisto)
Laudis<-drm(Control~ Rate, Herbicide, subset = Herbicide =="Laudis", fct=l3 (fixed =c(NA,100,NA)),data=WAT8)
Impact<-drm(Control~ Rate, Herbicide, subset = Herbicide =="Impact", fct=l3 (fixed =c(NA,100,NA)),data=WAT8)
summary(Callisto)

plot(Callisto, add=T, col=1, type="confidence", legend=F, pch = 1, lty = 1,
     bp=0.01, xlim=c(0,850), ylim=c(0,100))

plot(Laudis, add=T, col=2, type="confidence", legend=F, pch = 2, lty = 2,
     bp=0.01, xlim=c(0,850), ylim=c(0,100))

plot(Impact, add=T, col=3, type="confidence", legend=F, pch = 3, lty = 3,
     bp=0.01, xlim=c(0,850), ylim=c(0,100))


legend ("bottomright", legend= c ("Mesotrione", "Topramezone", "Tembotrione"),
                    col=c(1,2,3), lty=c(1,2,3), lwd=1, pch=c(1,2,3), bty="n")


M8<-drm(Control~ Rate, Herbicide, fct=l3 (fixed =c(NA,100,NA)),data=WAT8)
summary(M8)
modelFit(M8)
ED(M8,c(50,70,90))
EDcomp(M8, c(50,50))



#Biomass
plot(BiomassR~ Rate, data = WAT8,las=1,
     xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
     ylab = expression(paste("Weed Control (%)")), type="none",
     xlim=c(0,850), ylim=c(0,100), cex.lab=1.3, font.axis=2, main="21 DAT - Waterhemp 8 cm ")

CallistoB<-drm(BiomassR~ Rate, Herbicide, subset = Herbicide =="Callisto", fct=l3 (fixed =c(NA,100,NA)),data=WAT8)
LaudisB<-drm(BiomassR~ Rate, Herbicide, subset = Herbicide =="Laudis", fct=l3 (fixed =c(NA,100,NA)),data=WAT8)
ImpactB<-drm(BiomassR~ Rate, Herbicide, subset = Herbicide =="Impact", fct=l3 (fixed =c(NA,100,NA)),data=WAT8)


plot(CallistoB, add=T, col=1, legend=F, pch = 1, lty = 1,
     bp=0.01, xlim=c(0,850), ylim=c(0,100))

plot(LaudisB, add=T, col=2, legend=F, pch = 2, lty = 2,
     bp=0.01, xlim=c(0,850), ylim=c(0,100))

plot(ImpactB, add=T, col=3, legend=F, pch = 3, lty = 3,
     bp=0.01, xlim=c(0,850), ylim=c(0,100))

M8B<-drm(BiomassR~ Rate, Herbicide, fct=l3 (fixed =c(NA,100,NA)),data=WAT8)
summary(M8B)

ED(M8B,c(50,70,90))
EDcomp(M8B, c(50,50))

abline(v=355.15, h=50)








x11()
#plot first 4 lines on Fig 1
layout(matrix(2:1, ncol = 2), widths = 1, heights = c(1.5,1.5,1), respect = F)
par(mar=c(6,7,2,1), mgp=c(4.5,1,0))

#Biomass Reduction

plot(BiomassR~ Rate, data = WAT8,las=1, cex=2, cex.axis=1.8,
     xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
     ylab = expression(paste("Biomass Reduction (%)")), type="none",
     xlim=c(0,850), ylim=c(0,100), cex.lab=2.5, font.axis=1)

plot(CallistoB, add=T, xlim=c(0,850), bp=0.01, cex=2, cex.lab=2.5, font.axis=8,
     cex.axis=2.1, ylim=c(0,100), legend=F, lwd=4, col=1, lty=1, pch=1)

plot(LaudisB, add=T, xlim=c(0,850), bp=0.01, cex=2, cex.lab=2.5, font.axis=8,
     cex.axis=2.1, ylim=c(0,100), legend=F, lwd=4, col=2, lty=2, pch=2)

plot(ImpactB, add=T, xlim=c(0,850), bp=0.01, cex=2, cex.lab=2.5, font.axis=8,
     cex.axis=2.1, ylim=c(0,100), legend=F, lwd=4, col=3, lty=3, pch=3)


legend ("bottomright", legend="B", cex=3.0, bty="n")



#Control

plot(Control~ Rate, data = WAT8,las=1, cex=2, cex.axis=1.8,
     xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
     ylab = expression(paste("Control (%)")), type="none",
     xlim=c(0,850), ylim=c(0,100), cex.lab=2.5, font.axis=1)

plot(Callisto, add=T, xlim=c(0,850), bp=0.01, cex=2, cex.lab=2.5, font.axis=8,
     cex.axis=2.1, ylim=c(0,100), legend=F, lwd=4, col=1, lty=1, pch=1)
   
plot(Laudis, add=T, xlim=c(0,850), bp=0.01, cex=2, cex.lab=2.5, font.axis=8,
     cex.axis=2.1, ylim=c(0,100), legend=F, lwd=4, col=2, lty=2, pch=2)

plot(Impact, add=T, xlim=c(0,850), bp=0.01, cex=2, cex.lab=2.5, font.axis=8,
     cex.axis=2.1, ylim=c(0,100), legend=F, lwd=4, col=3, lty=3, pch=3)

legend ("bottom", legend= c ("Mesotrione", "Topramezone", "Tembotrione"),
        col=c(1,2,3), lty=c(1,2,3), cex=1.8, lwd=3, pch=c(1,2,3), bty="n")

legend ("bottomright", legend="A", cex=3.0, bty="n")








