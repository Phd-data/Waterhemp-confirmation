#Data Analysis - WATERHEMP - HPPD - 21 Days  8 cm- Dose Response Malathion- 12 UNL CRN TN - 2012/13/14

setwd("C:/Users/NECWEEDS/Documents/DATA/Tarnov/Malathion")
dir()

library(XLConnect)
library(drc)
library (RODBC)


############Visual Injury Rating (IR)
########### data HPPD 3 in


Post=loadWorkbook("malathion.xlsx")
# Read the data on the sheet named "21 DAA"
Combined = readWorksheet(Post, sheet = "21 DAA", header = T)

head (Combined)
Combined  #this will show data

#par (mfrow=c(1, 3))

plot (IR~ RateM, data = Combined,las=1,
      xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
      ylab = expression(paste("Control (%)")), type="none",
      xlim=c(0,850), ylim=c(0,100), cex.lab=1.4, font.axis=2, main="21 DAT - Waterhemp 8 cm ")
fm1<-drm(IR~ RateM, fct=l4 (fixed =c(NA,0,100,NA)),data=Combined, subset = Population == "Malathion")
fm2<-drm(IR~ RateM, fct=l4 (fixed =c(NA,0,100,NA)),data=Combined, subset = Population == "Callisto")



plot(fm1, add=T,col=1,lty=1, lwd=5,pch=1, bp=0.01, xlim=c(0,850))
plot(fm2, add=T,col=2,lty=1, lwd=5,pch=2, bp=0.01, xlim=c(0,850))



legend ("bottomright", legend= c ("Malathion + Mesotrione","Mesotrione"), col=c(1,2), lty=c(1,1),lwd=5,pch=c(1,2))

summary (fm1)
summary (fm2)



ED(fm1,c(50, 70, 90))
ED(fm2,c(50, 70, 90))



###########################################################################################################################################

#Data Analysis - WATERHEMP - HPPD - 21 Days  8 cm- Dose Response Malathion- 12 UNL CRN TN - 2012/13/14

setwd("C:/Users/NECWEEDS/Documents/DATA/Tarnov/Malathion")
dir()

library(XLConnect)
library(drc)
library (RODBC)


############ Biomass Reduction
########### data HPPD 3 in


Post=loadWorkbook("malathion.xlsx")
# Read the data on the sheet named "weight"
Combined = readWorksheet(Post, sheet = "weight", header = T)

head (Combined)
Combined  #this will show data

#par (mfrow=c(1, 3))

plot (BM~ RateM, data = Combined,las=1,
      xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
      ylab = expression(paste("Biomass Reduction (%)")), type="none",
      xlim=c(0,850), ylim=c(0,100), cex.lab=1.4, font.axis=2, main="21 DAT - Waterhemp 8 cm ")
fm3<-drm(BM~ RateM, fct=l4 (fixed =c(NA,0,100,NA)),data=Combined, subset = Herbicide == "Malathion")
fm4<-drm(BM~ RateM, fct=l4 (fixed =c(NA,0,100,NA)),data=Combined, subset = Herbicide == "Callisto")



plot(fm3, add=T,col=1,lty=1, lwd=5,pch=1, bp=0.01, xlim=c(0,850))
plot(fm4, add=T,col=2,lty=1, lwd=5,pch=2, bp=0.01, xlim=c(0,850))



legend ("bottomright", legend= c ("Malathion + Mesotrione","Mesotrione"), col=c(1,2), lty=c(1,1),lwd=5,pch=c(1,2))

summary (fm3)
summary (fm4)



ED(fm3,c(50, 70, 90))
ED(fm4,c(50, 70, 90))



####################COMBINIG FIGURES ##########################
X11()
#plot first 4 lines on Fig 1
layout(matrix(2:1, ncol = 2), widths = 1, heights = c(1.5,1.5,1), respect = F)
par(mar=c(6,7,2,1), mgp=c(4.5,1,0))
plot(fm3, log="", xlim=c(0,850), bp=0.01, cex=2, cex.lab=2.5, font.axis=8,
     cex.axis=2.1, ylim=c(0,100), 
     ylab=expression("Biomass reduction (%)"), 
     xlab = expression(paste("Herbicide (g ai ha "^"-1",")")), col=2, lwd=6, pch=1) 
plot(fm4, add=T,col=4,cex=2, lty=1, bp=0.01, lwd=6,pch=2, xlim=c(0,850))


legend ("bottomright", legend=c ("B"), cex=3.0, bty="n")


par(mar=c(6,7,2,1), mgp=c(4.5,1,0))
plot(fm1, log="", cex=2, xlim=c(0,850), bp=0.01, cex.lab=2.5, 
     font.axis=8, cex.axis=2.1, ylim=c(0,100), 
     xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
     ylab=expression("Control (%)"), col=2, lwd=6, pch=1) 
plot(fm2, add=T,col=4,cex=2,lty=1, bp=0.01, lwd=6,pch=2, xlim=c(0,850))


legend (250,40, legend= c("Mesotrione+Malathion","Mesotrione"),col=c(2,4), lty=c(1,1),cex=1.5, lwd=4, pch=c(1,2))
legend ("bottomright", legend=c ("A"), cex=3.0,  bty="n")

