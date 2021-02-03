#Data Analysis - WATERHEMP - HPPD - 21 Days  8 cm- Dose Response - 12 UNL CRN TN - 2012/13/14

setwd("C:/Users/NECWEEDS/Documents/DATA/Tarnov/Combined")
dir()

library(XLConnect)
library(drc)
library (RODBC)


############Visual Injury Rating (IR)
########### data HPPD 3 in


Post=loadWorkbook("Dataa.xlsx")
# Read the data on the sheet named "Dose response 3in"
Combined = readWorksheet(Post, sheet = "Dose response 3in", header = T)

head (Combined)
Combined  #this will show data

#par (mfrow=c(1, 3))
X11()
plot (IR~ RateM, data = Combined,las=1,
      xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
      ylab = expression(paste("Waterhemp Control (%)")), type="none",
      xlim=c(0,850), ylim=c(0,100), cex.lab=1.3, font.axis=2, main="21 DAT - Waterhemp 8 cm ")
fm1<-drm(IR~ RateM, fct=l4 (fixed =c(NA,0,85,NA)),data=Combined, subset = Herbicide == "Callisto")
fm2<-drm(IR~ RateM, fct=l4 (fixed =c(NA,0,NA,NA)),data=Combined, subset = Herbicide == "Laudis")
fm3<-drm(IR~ RateM, fct=l4 (fixed =c(-1.1,0,NA,NA)),data=Combined, subset = Herbicide == "Impact")


plot(fm1, add=T,col=1,lty=1, lwd=3,pch=1, bp=0.01, xlim=c(0,850))
plot(fm2, add=T,col=2,lty=1, lwd=3,pch=2, bp=0.01, xlim=c(0,850))
plot(fm3, add=T,col=3,lty=1, lwd=3,pch=3, bp=0.01, xlim=c(0,850))


legend ("bottomright", legend= c ("Mesotrione","Tembotrione","Topramezone"), col=c(1,2,3), lty=c(1,1,1),lwd=3,pch=c(1,2,3))

summary (fm1)
summary (fm2)
summary (fm3)


ED(fm1,c(50, 70, 90))
ED(fm2,c(50, 70, 90))
ED(fm3,c(50, 70, 90))

####################################################################################################################


#Data Analysis - WATERHEMP - HPPD - 21 Days  15 cm- Dose Response - 12 UNL CRN TN - 2012/13/14

setwd("C:/Users/NECWEEDS/Documents/DATA/Tarnov/Combined")
dir()

library(XLConnect)
library(drc)
library (RODBC)


############Visual Injury Rating (IR)
########### data HPPD 6 in


Post=loadWorkbook("Dataa.xlsx")
# Read the data on the sheet named "Dose response 6in"
Combined = readWorksheet(Post, sheet = "Dose response 6in", header = T)

head (Combined)
Combined  #this will show data


plot (IR~ RateM, data = Combined,las=1,
      xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
      ylab = expression(paste("Waterhemp Control (%)")), type="none",
      xlim=c(0,850), ylim=c(0,100), cex.lab=1.3, font.axis=2, main="21 DAT - Waterhemp 15 cm ")
fm4<-drm(IR~ RateM, fct=l4 (fixed =c(NA,0,95,NA)),data=Combined, subset = Herbicide == "Callisto")
fm5<-drm(IR~ RateM, fct=l4 (fixed =c(NA,0,100,NA)),data=Combined, subset = Herbicide == "Laudis")
fm6<-drm(IR~ RateM, fct=l4 (fixed =c(-0.9,0,NA,NA)),data=Combined, subset = Herbicide == "Impact")


plot(fm4, add=T,col=1,lty=1, lwd=3,pch=1, bp=0.01, xlim=c(0,850))
plot(fm5, add=T,col=2,lty=1, lwd=3,pch=2, bp=0.01, xlim=c(0,850))
plot(fm6, add=T,col=3,lty=1, lwd=3,pch=3, bp=0.01, xlim=c(0,850))


legend ("bottomright", legend= c ("Mesotrione","Tembotrione","Topramezone"),col=c(1,2,3), lty=c(1,1,1),lwd=3,pch=c(1,2,3))

summary (fm1)
summary (fm2)
summary (fm3)

ED(fm4,c(50, 70, 90))
ED(fm5,c(50, 70, 90))
ED(fm6,c(50, 70, 90))

###########################################################################################################################################

x11()
#plot first 4 lines on Fig 1
layout(matrix(2:1, ncol = 2), widths = 1, heights = c(1.5,1.5,1), respect = F)
par(mar=c(6,7,2,1), mgp=c(4.5,1,0))
plot(fm4, log="", xlim=c(0,850), bp=0.01, cex=2, cex.lab=2.5, font.axis=8,
     cex.axis=2.1, ylim=c(0,100), 
     ylab=expression("Waterhemp control (%)"), 
     xlab = expression(paste("Herbicide (g ai ha "^"-1",")")), col=1, lwd=6, pch=1) 
plot(fm5, add=T,col=1,cex=2, lty=2, bp=0.01, lwd=6,pch=2, xlim=c(0,850))
plot(fm6, add=T,col=1, cex=2, lty=3, bp=0.01, lwd=6,pch=3, xlim=c(0,850))

legend ("bottomright", legend=c ("B"), cex=3.0, bty="n")


par(mar=c(6,7,2,1), mgp=c(4.5,1,0))
plot(fm1, log="", cex=2, xlim=c(0,850), bp=0.01, cex.lab=2.5, 
     font.axis=8, cex.axis=2.1, ylim=c(0,100), 
     xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
     ylab=expression("Waterhemp control (%)"), col=1, lwd=6, pch=1) 
plot(fm2, add=T,col=1,cex=2,lty=2, bp=0.01, lwd=6,pch=2, xlim=c(0,850))
plot(fm3, add=T,col=1,cex=2,lty=3, bp=0.01, lwd=6,pch=3,xlim=c(0,850))

legend (500,50, legend= c ("Mesotrione","Tembotrione","Topramezone"),col=c(1,1,1), lty=c(1,2,3),cex=2, lwd=6,pch=c(1,2,3))
legend ("bottomright", legend=c ("A"), cex=3.0,  bty="n")


# Biomass reduction 

###################################################################################################################################################


#Data Analysis - WATERHEMP - HPPD - 21 Days  15 cm- DWR - 12 UNL CRN TN - 2012/13/14

setwd("C:/Users/NECWEEDS/Documents/DATA/Tarnov/Combined")
dir()

library(XLConnect)
library(drc)
library (RODBC)


############Dry weight reduction
########### data HPPD 15 cm


Post=loadWorkbook("Dataa.xlsx")
# Read the data on the sheet named "Dose response 3in"
Combined = readWorksheet(Post, sheet = "Dose response 3in", header = T)

head (Combined)
Combined  #this will show data


plot (IR~ RateM, data = Combined,las=1,
      xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
      ylab = expression(paste("Biomass reduction (%)")), type="none",
      xlim=c(0,850), ylim=c(0,100), cex.lab=1.3, font.axis=2, main="28 DAT - Waterhemp 8 cm ")
fm7<-drm(DWR~ RateM, fct=l4 (fixed =c(NA,0,86,NA)),data=Combined, subset = Herbicide == "Callisto")
fm8<-drm(DWR~ RateM, fct=l4 (fixed =c(-0.7,0,NA,NA)),data=Combined, subset = Herbicide == "Laudis")
fm9<-drm(DWR~ RateM, fct=l4 (fixed =c(-0.9,0,NA,NA)),data=Combined, subset = Herbicide == "Impact")


plot(fm7, add=T,col=1,lty=1, lwd=3,pch=1, bp=0.01, xlim=c(0,850))
plot(fm8, add=T,col=2,lty=1, lwd=3,pch=2, bp=0.01, xlim=c(0,850))
plot(fm9, add=T,col=3,lty=1, lwd=3,pch=3, bp=0.01, xlim=c(0,850))


legend ("bottomright", legend= c ("Mesotrione","Tembotrione","Topramezone"),col=c(1,2,3), lty=c(1,1,1),lwd=3,pch=c(1,2,3))

summary (fm1)
summary (fm2)
summary (fm3)


ED(fm1,c(50, 70, 90))
ED(fm2,c(50, 70, 90))
ED(fm3,c(50, 70, 90))


######################################################################################################################################

###########################################################################################################################################


#Data Analysis - WATERHEMP - HPPD - 21 Days  15 cm- DWR - 12 UNL CRN TN - 2012/13/14

setwd("C:/Users/NECWEEDS/Documents/DATA/Tarnov/Combined")
dir()

library(XLConnect)
library(drc)
library (RODBC)


############Dry weight reduction
########### data HPPD 15 cm


Post=loadWorkbook("Dataa.xlsx")
# Read the data on the sheet named "Dose response 6in"
Combined = readWorksheet(Post, sheet = "Dose response 6in", header = T)

head (Combined)
Combined  #this will show data


plot (IR~ RateM, data = Combined,las=1,
      xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
      ylab = expression(paste("Biomass reduction (%)")), type="none",
      xlim=c(0,850), ylim=c(0,100), cex.lab=1.3, font.axis=2, main="28 DAT - Waterhemp 15 cm ")
fm10<-drm(DWR~ RateM, fct=l4 (fixed =c(NA,0,100,NA)),data=Combined, subset = Herbicide == "Callisto")
fm11<-drm(DWR~ RateM, fct=l4 (fixed =c(-0.6,0,NA,NA)),data=Combined, subset = Herbicide == "Laudis")
fm12<-drm(DWR~ RateM, fct=l4 (fixed =c(-0.8,0,NA,NA)),data=Combined, subset = Herbicide == "Impact")


plot(fm10, add=T,col=1,lty=1, lwd=3,pch=1, bp=0.01, xlim=c(0,850))
plot(fm11, add=T,col=2,lty=1, lwd=3,pch=2, bp=0.01, xlim=c(0,850))
plot(fm12, add=T,col=3,lty=1, lwd=3,pch=3, bp=0.01, xlim=c(0,850))


legend ("bottomright", legend= c ("Mesotrione","Tembotrione","Topramezone"),col=c(1,2,3), lty=c(1,1,1),lwd=3,pch=c(1,2,3))

summary (fm10)
summary (fm11)
summary (fm12)


ED(fm10,c(50, 70, 90))
ED(fm11,c(50, 70, 90))
ED(fm12,c(50, 70, 90))


#############################################################################################################

#Combining Biomass reduction


#plot first 4 lines on Fig 1
layout(matrix(2:1, ncol = 2), widths = 1, heights = c(1.5,1.5,1), respect = F)
par(mar=c(6,7,2,1), mgp=c(4.5,1,0))
plot(fm10, log="", xlim=c(0,850), bp=0.01, cex=2, cex.axis=2, cex.lab=2.5, 
     ylim=c(0,100), font.axis=8,
     ylab=expression("Biomass reduction (%)"),
     xlab = expression(paste("Herbicide (g ai ha "^"-1",")")), col=1, lwd=6, pch=1) 
plot(fm11, add=T,col=1,cex=2, lty=2, bp=0.01, lwd=6, pch=2, xlim=c(0,850))
plot(fm12, add=T,col=1, cex=2, lty=3, bp=0.01, lwd=6, pch=3, xlim=c(0,850))

#legend (870,20, legend= c ("Mesotrione","Tembotrione","Topramezone"),col=c(1,1,1), lty=c(1,2,3),lwd=1.5,pch=c(1,2,3))
legend ("bottomright", legend=c ("B"), cex=3, bty="n")


par(mar=c(6,7,2,1), mgp=c(4.5,1,0))
plot(fm7, log="", cex=2.0, xlim=c(0,850), bp=0.01, 
     cex.axis=2, cex.lab=2.5, ylim=c(0,100), 
     font.axis=8, 
     ylab="Biomass reduction (%)", 
     xlab = expression(paste("Herbicide (g ai ha "^"-1",")")), col=1, lwd=6, pch=1) 
plot(fm8, add=T,col=1,cex=2,lty=2, bp=0.01, lwd=6,pch=2, xlim=c(0,850))
plot(fm9, add=T,col=1,cex=2,lty=3, bp=0.01, lwd=6,pch=3,xlim=c(0,850))

legend (500,50, legend= c ("Mesotrione","Tembotrione","Topramezone"),col=c(1,1,1), lty=c(1,2,3),cex=2, lwd=6,pch=c(1,2,3))
legend ("bottomright", legend=c ("A"), cex=3,  bty="n")


#############COMBINING 3"##############################
X11()
#plot first 4 lines on Fig 1
layout(matrix(2:1, ncol = 2), widths = 1, heights = c(1.5,1.5,1), respect = F)
par(mar=c(6,7,2,1), mgp=c(4.5,1,0))
par(mar=c(6,7,2,1), mgp=c(4.5,1,0))
plot(fm7, log="", cex=2.0, xlim=c(0,850), bp=0.01, 
     cex.axis=2, cex.lab=2.5, ylim=c(0,100), 
     font.axis=8, 
     ylab="Biomass reduction (%)", 
     xlab = expression(paste("Herbicide (g ai ha "^"-1",")")), col=1, lwd=7, pch=1) 
plot(fm8, add=T,col=1,cex=2,lty=2, bp=0.01, lwd=7,pch=2, xlim=c(0,850))
plot(fm9, add=T,col=1,cex=2,lty=3, bp=0.01, lwd=7,pch=3,xlim=c(0,850))


legend ("bottomright", legend=c ("B"), cex=3,  bty="n")


par(mar=c(6,7,2,1), mgp=c(4.5,1,0))
plot(fm1, log="", cex=2, xlim=c(0,850), bp=0.01, cex.lab=2.5, 
     font.axis=8, cex.axis=2.1, ylim=c(0,100), 
     xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
     ylab=expression("Waterhemp control (%)"), col=1, lwd=7, pch=1) 
plot(fm2, add=T,col=1,cex=2,lty=2, bp=0.01, lwd=7,pch=2, xlim=c(0,850))
plot(fm3, add=T,col=1,cex=2,lty=3, bp=0.01, lwd=7,pch=3,xlim=c(0,850))

legend (500,50, legend= c ("Mesotrione","Tembotrione","Topramezone"),col=c(1,1,1), lty=c(1,2,3),cex=2, lwd=7,pch=c(1,2,3))
legend ("bottomright", legend=c ("A"), cex=3.0,  bty="n")



#############COMBINING 6"##############################

x11()
layout(matrix(2:1, ncol = 2), widths = 1, heights = c(1.5,1.5,1), respect = F)
par(mar=c(6,7,2,1), mgp=c(4.5,1,0))
plot(fm10, log="", xlim=c(0,850), bp=0.01, cex=2, cex.axis=2, cex.lab=2.5, 
     ylim=c(0,100), font.axis=8,
     ylab=expression("Biomass reduction (%)"),
     xlab = expression(paste("Herbicide (g ai ha "^"-1",")")), col=1, lwd=7, pch=1) 
plot(fm11, add=T,col=1,cex=2, lty=2, bp=0.01, lwd=7, pch=2, xlim=c(0,850))
plot(fm12, add=T,col=1, cex=2, lty=3, bp=0.01, lwd=7, pch=3, xlim=c(0,850))


legend ("bottomright", legend=c ("B"), cex=3, bty="n")

plot(fm4, log="", xlim=c(0,850), bp=0.01, cex=2, cex.lab=2.5, font.axis=8,
     cex.axis=2.1, ylim=c(0,100), 
     ylab=expression("Waterhemp control (%)"), 
     xlab = expression(paste("Herbicide (g ai ha "^"-1",")")), col=1, lwd=7, pch=1) 
plot(fm5, add=T,col=1,cex=2, lty=2, bp=0.01, lwd=7,pch=2, xlim=c(0,850))
plot(fm6, add=T,col=1, cex=2, lty=3, bp=0.01, lwd=7,pch=3, xlim=c(0,850))

legend (500,50, legend= c ("Mesotrione","Tembotrione","Topramezone"), cex=2.0, col=c(1,1,1), lty=c(1,2,3),lwd=7,pch=c(1,2,3))
legend ("bottomright", legend=c ("A"), cex=3.0, bty="n")

