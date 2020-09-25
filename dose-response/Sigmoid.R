#8 cm waterhemp
WAT8=read.csv("Data_8.csv")
str(WAT8)

library(drc)
#Test of homogeneity
library(sandwich)
fligner.test(Control~Run, data=WAT8)


#CONTROL
CallistoR<-drm(Control~ Rate, Herbicide, subset = Herbicide =="Callisto", fct=l3 (fixed =c(NA,100,NA)),data=WAT8)
CallistoS<-drm(Control~ Rate, Herbicide, subset = Herbicide =="CallistoS", fct=l3 (fixed =c(NA,100,NA)),data=WAT8)
summary(CallistoR)

ED(CallistoS, c(10,50,90))


#Plot
X11()

layout(matrix(1:2, ncol = 1), widths = 1, heights = c(1.5,1.5,2), respect = FALSE)
par(mar=c(0,7,1,2), mgp=c(3.0,1,0))

plot(CallistoR, col=2, axes=FALSE, pch = 16, lwd=4, cex=2, lty = 1,  cex.lab=1.8, ylab = "Control (%)",
      xlim=c(0,100000), bp=0.0001, ylim=c(0,100))

plot(CallistoS, add=T, col=1, lwd=4, cex=2, legend=F, pch = 17, lty = 1,
     xlim=c(0,100000), bp=0.0001, ylim=c(0,100))
 
legend('topleft', c("HPPD-RW","HPPD-SW"), col=c("2","1"),lwd=c(4,4),pch=c(16,17),bty="n",cex=1.5,lty=c(1,1))
legend('bottomright', c("A"), col="1",bty="n",cex=2.1)


#BIOMASS
CallistoBR<-drm(BiomassR~ Rate, Herbicide, subset = Herbicide =="Callisto", fct=l3 (fixed =c(NA,100,NA)),data=WAT8)
CallistoBS<-drm(BiomassR~ Rate, Herbicide, subset = Herbicide =="CallistoS", fct=l3 (fixed =c(NA,100,NA)),data=WAT8)

par(mar=c(4.0,7,0,2), mgp=c(3.0,1,0))


plot(CallistoBR, col=2, cex.axis=1.5, legend=F, lwd=4, cex=2, pch = 16, lty = 1, xlab = expression(paste("Mesotrione (g ai ha"^"-1",")")),
     ylab = "Biomass reduction (%)", cex.lab=1.8, bp=0.0001, xlim=c(0,100000), ylim=c(0,100))

plot(CallistoBS, add=T, col=1, lwd=4, cex=2, legend=F, pch = 17, lty = 1,
      bp=0.0001, xlim=c(0,100000), ylim=c(0,100))

legend('bottomright', c("B"), col=c("1"),bty="n",cex=2)

#CONTROL
LaudisR<-drm(Control~ Rate, Herbicide, subset = Herbicide =="Laudis", fct=l3 (fixed =c(NA,100,NA)),data=WAT8)
LaudisS<-drm(Control~ Rate, Herbicide, subset = Herbicide =="LaudisS", fct=l3 (fixed =c(NA,100,NA)),data=WAT8)

layout(matrix(1:2, ncol = 1), widths = 1, heights = c(1.5,1.5,2), respect = FALSE)
par(mar=c(0,7,1,2), mgp=c(3.0,1,0))

plot(LaudisR, col=2, axes=FALSE, pch = 16, lwd=4, cex=2, lty = 1,  cex.lab=1.8, ylab = "Control (%)",
     xlim=c(0,100000), bp=0.0001, ylim=c(0,100))

plot(LaudisS, add=T, col=1, lwd=4, cex=2, legend=F, pch = 17, lty = 1,
     xlim=c(0,100000), bp=0.0001, ylim=c(0,100))
axis (2, las=2, cex.axis=1.5) 
legend('topleft', c("HPPD-RW","HPPD-SW"), col=c("2","1"),lwd=c(4,4),pch=c(16,17),bty="n",cex=1.5,lty=c(1,1))
legend('bottomright', c("A"), col="1",bty="n",cex=2.1)

#BIOMASS

LaudisBR<-drm(BiomassR~ Rate, Herbicide, subset = Herbicide =="Laudis", fct=l3 (fixed =c(NA,100,NA)),data=WAT8)
LaudisBS<-drm(BiomassR~ Rate, Herbicide, subset = Herbicide =="LaudisS", fct=l3 (fixed =c(NA,100,NA)),data=WAT8)

par(mar=c(4.0,7,0,2), mgp=c(3.0,1,0))


plot(LaudisBR, col=2, cex.axis=1.5, legend=F, lwd=4, cex=2, pch = 16, lty = 1, xlab = expression(paste("Tembotrione (g ai ha"^"-1",")")),
     ylab = "Biomass reduction (%)", cex.lab=1.8, bp=0.0001, xlim=c(0,100000), ylim=c(0,100))

plot(LaudisBS, add=T, col=1, lwd=4, cex=2, legend=F, pch = 17, lty = 1,
     bp=0.0001, xlim=c(0,100000), ylim=c(0,100))

legend('bottomright', c("B"), col=c("1"),bty="n",cex=2)


#CONTROL
ImpactR<-drm(Control~ Rate, Herbicide, subset = Herbicide =="Impact", fct=l3 (fixed =c(NA,100,NA)),data=WAT8)
ImpactS<-drm(Control~ Rate, Herbicide, subset = Herbicide =="ImpactS", fct=l3 (fixed =c(NA,100,NA)),data=WAT8)

layout(matrix(1:2, ncol = 1), widths = 1, heights = c(1.5,1.5,2), respect = FALSE)
par(mar=c(0,7,1,2), mgp=c(3.0,1,0))

plot(ImpactR, col=2, axes=FALSE, pch = 16, lwd=4, cex=2, lty = 1,  cex.lab=1.8, ylab = "Control (%)",
     xlim=c(0,100000), bp=0.0001, ylim=c(0,100))

plot(ImpactS, add=T, col=1, lwd=4, cex=2, legend=F, pch = 17, lty = 1,
     xlim=c(0,100000), bp=0.0001, ylim=c(0,100))
axis (2, las=2, cex.axis=1.5) 
legend('topleft', c("HPPD-RW","HPPD-SW"), col=c("2","1"),lwd=c(4,4),pch=c(16,17),bty="n",cex=1.5,lty=c(1,1))
legend('bottomright', c("A"), col="1",bty="n",cex=2.1)


#BIOMASS
ImpactBR<-drm(BiomassR~ Rate, Herbicide, subset = Herbicide =="Impact", fct=l3 (fixed =c(NA,100,NA)),data=WAT8)
ImpactBS<-drm(BiomassR~ Rate, Herbicide, subset = Herbicide =="ImpactS", fct=l3 (fixed =c(NA,100,NA)),data=WAT8)

par(mar=c(4.0,7,0,2), mgp=c(3.0,1,0))


plot(ImpactBR, col=2, cex.axis=1.5, legend=F, lwd=4, cex=2, pch = 16, lty = 1, xlab = expression(paste("Topramezone (g ai ha"^"-1",")")),
     ylab = "Biomass reduction (%)", cex.lab=1.8, bp=0.0001, xlim=c(0,100000), ylim=c(0,100))

plot(ImpactBS, add=T, col=1, lwd=4, cex=2, legend=F, pch = 17, lty = 1,
     bp=0.0001, xlim=c(0,100000), ylim=c(0,100))

legend('bottomright', c("B"), col=c("1"),bty="n",cex=2)

