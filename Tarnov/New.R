
#15 cm waterhemp
Tar=read.csv("Data_15.csv")
str(Tar)
library(drc)
X11()

#Fligner test of homogeneity
fligner.test(IR~Herbicide, data=Tar)
fligner.test(IR~year, data=Tar)


citation("drc")
plot (IR~ RateM, data = Tar,las=1,
      xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
      ylab = expression(paste("Control (%)")), type="none",
      xlim=c(0,850), ylim=c(0,100), cex.lab=1.3, font.axis=2, main="21 DAT - Waterhemp 8 cm ")


M<-drm(IR~ RateM, Herbicide, fct=l3 (fixed =c(NA,100,NA)),  data=Tar)
plot(M, add=T,col=c(1, 2, 3,4,5,6),lty=1, lwd=3, pch=1, bp=0.01, xlim=c(0,850))

modelFit(M)

legend ("bottomright", legend= c ("Mesotrione","Tembotrione","Topramezone"), col=c(1,2,3), lty=c(1,1,1),lwd=3,pch=c(1,2,3))

summary (M)

ED(M, c(50, 70, 90), interval = c("delta"),
   clevel = NULL,
   reference = c("upper"), type = c("absolute"), 1e-6, 100,
   bound = TRUE, vcov. = vcov, display = TRUE, pool = TRUE, logBase = NULL,
   multcomp = T)

abline(v=835.08, h=90)

relpot(M, scale = "percent")

EDcomp(M, c(50, 50))


relpot(M, plotit = TRUE, compMatch = NULL, percVec = NULL, interval = "delta",
       type ="relative", scale ="original")



abline(v=388.64, h=50)

###########################################################################################################################################
#Fligner test of homogeneity
fligner.test(DWR~year, data=Tar)
fligner.test(DWR~Herbicide, data=Tar)



plot (DWR~ RateM, data = Tar,las=1,
      xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
      ylab = expression(paste("Biomass reduction (%)")), type="none",
      xlim=c(0,850), ylim=c(0,100), cex.lab=1.3, font.axis=2, main="28 DAT - Waterhemp 8 cm ")


B=drm(DWR~ RateM, Herbicide, fct=l3 (fixed =c(NA,100,NA)),data=Tar)

plot(B, add=T,col=c(1,2,3),lty=1, lwd=3,pch=1, bp=0.01, xlim=c(0,850))



legend ("bottomright", legend= c ("Mesotrione","Tembotrione","Topramezone"),col=c(1,2,3), lty=c(1,1,1),lwd=3,pch=c(1,2,3))

summary (B)



ED(B, c(50, 70, 90), interval = c("delta"),
   clevel = NULL,
   reference = c("upper"), type = c("absolute"), 1e-6, 100,
   bound = TRUE, vcov. = vcov, display = TRUE, pool = TRUE, logBase = NULL,
   multcomp = T)
abline(v=596.48, h=70)
EDcomp(B, c(70, 70))


x11()
#plot first 4 lines on Fig 1
layout(matrix(2:1, ncol = 2), widths = 1, heights = c(1.5,1.5,1), respect = F)
par(mar=c(6,7,2,1), mgp=c(4.5,1,0))
plot(B, log="", xlim=c(0,850), bp=0.01, cex=2, cex.lab=2.5, font.axis=8,
     cex.axis=2.1, ylim=c(0,100), legend=F, lwd=4, col=c(1,2,3,4,5,6), lty=c(1,2,3,4,5,6),
     ylab=expression("Biomass Reduction (%)"), 
     xlab = expression(paste("Herbicide (g ai ha "^"-1",")"))) 

legend ("bottomright", legend=c ("B"), cex=3.0, bty="n")


par(mar=c(6,7,2,1), mgp=c(4.5,1,0))
plot(M, log="", cex=2, xlim=c(0,850), bp=0.01, cex.lab=2.5, 
     font.axis=8, cex.axis=2.1, ylim=c(0,100), legend=F, col=c(1,2,3,4,5,6), 
     lty=c(1,2,3,4,5,6),
     xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
     ylab=expression("Control (%)"), lwd=4) 

legend ("bottom", lwd=3, legend= c ("Mesotrione -R", "Tembotrione -R", "Topramezone -R",
                                         "Mesotrione -S", "Tembotrione -S", "Topramezone -S"),
        col=c(1,2,3,4,5,6), cex=1.8, bty="n", lty=c(1,2,3,4,5,6), pch=c(1,2,3,4,5,6))

legend ("bottomright", legend=c ("A"), cex=3.0, bty="n")

