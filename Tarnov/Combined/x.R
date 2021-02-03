#Data Analysis - WATERHEMP - HPPD - 21 Days  8 cm- Dose Response - 12 UNL CRN TN - 2012/13/14

setwd("C:/Users/NECWEEDS/Documents/DATA/Tarnov/Combined")
dir()

library(XLConnect)
library(drc)
library (RODBC)


############Visual Injury Rating (IR)
########### data HPPD 6 in


Post=loadWorkbook("Dataa.xlsx")
# Read the data on the sheet named "Dose response 3in"
Combined = readWorksheet(Post, sheet = "Dose response 3in", header = T)

head (Combined)
Combined  #this will show data

#par (mfrow=c(1, 3))
X11()
plot (IR~ RateM, data = Combined,las=1,
      xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
      ylab = expression(paste("Control (%)")), type="none",
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


###########################################################################################################################################

#Data Analysis - WATERHEMP - HPPD - 21 Days  8 cm- DWR - 12 UNL CRN TN - 2012/13/14

setwd("C:/Users/NECWEEDS/Documents/DATA/Tarnov/Combined")
dir()

library(XLConnect)
library(drc)
library (RODBC)


############Dry weight reduction
########### data HPPD 8 cm


Post=loadWorkbook("Dataa.xlsx")
# Read the data on the sheet named "Dose response 3in"
Combined = readWorksheet(Post, sheet = "Dose response 3in", header = T)

head (Combined)
Combined  #this will show data


plot (IR~ RateM, data = Combined,las=1,
      xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
      ylab = expression(paste("Biomass reduction (%)")), type="none",
      xlim=c(0,850), ylim=c(0,100), cex.lab=1.3, font.axis=2, main="28 DAT - Waterhemp 8 cm ")
fm1<-drm(DWR~ RateM, fct=l4 (fixed =c(NA,0,86,NA)),data=Combined, subset = Herbicide == "Callisto")
fm2<-drm(DWR~ RateM, fct=l4 (fixed =c(-0.7,0,NA,NA)),data=Combined, subset = Herbicide == "Laudis")
fm3<-drm(DWR~ RateM, fct=l4 (fixed =c(-0.9,0,NA,NA)),data=Combined, subset = Herbicide == "Impact")


plot(fm1, add=T,col=1,lty=1, lwd=3,pch=1, bp=0.01, xlim=c(0,850))
plot(fm2, add=T,col=2,lty=1, lwd=3,pch=2, bp=0.01, xlim=c(0,850))
plot(fm3, add=T,col=3,lty=1, lwd=3,pch=3, bp=0.01, xlim=c(0,850))


legend ("bottomright", legend= c ("Mesotrione","Tembotrione","Topramezone"),col=c(1,2,3), lty=c(1,1,1),lwd=3,pch=c(1,2,3))

summary (fm1)
summary (fm2)
summary (fm3)


ED(fm1,c(50, 70, 90))
ED(fm2,c(50, 70, 90))
ED(fm3,c(50, 70, 90))



######################################################################################################################################


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
      ylab = expression(paste("Weed Control (%)")), type="none",
      xlim=c(0,850), ylim=c(0,100), cex.lab=1.3, font.axis=2, main="21 DAT - Waterhemp 15 cm ")
fm1<-drm(IR~ RateM, fct=l4 (fixed =c(NA,0,100,NA)),data=Combined, subset = Herbicide == "Callisto")
fm2<-drm(IR~ RateM, fct=l4 (fixed =c(NA,0,100,NA)),data=Combined, subset = Herbicide == "Laudis")
fm3<-drm(IR~ RateM, fct=l4 (fixed =c(-0.8,0,NA,NA)),data=Combined, subset = Herbicide == "Impact")


plot(fm1, add=T,col=1,lty=1, lwd=3,pch=1, bp=0.01, xlim=c(0,850))
plot(fm2, add=T,col=2,lty=1, lwd=3,pch=2, bp=0.01, xlim=c(0,850))
plot(fm3, add=T,col=3,lty=1, lwd=3,pch=3, bp=0.01, xlim=c(0,850))


legend ("bottomright", legend= c ("Mesotrione","Tembotrione","Topramezone"),col=c(1,2,3), lty=c(1,1,1),lwd=3,pch=c(1,2,3))

summary (fm1)
summary (fm2)
summary (fm3)


ED(fm1,c(50, 70, 90))
ED(fm2,c(50, 70, 90))
ED(fm3,c(50, 70, 90))


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


plot (DWR~ RateM, data = Combined,las=1,
      xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
      ylab = expression(paste("Biomass reduction (%)")), type="none",
      xlim=c(0,850), ylim=c(0,100), cex.lab=1.3, font.axis=2, main="28 DAT - Waterhemp 15 cm ")
fm1<-drm(DWR~ RateM, fct=l4 (fixed =c(NA,0,105,NA)),data=Combined, subset = Herbicide == "Callisto")
fm2<-drm(DWR~ RateM, fct=l4 (fixed =c(-0.7,0,NA,NA)),data=Combined, subset = Herbicide == "Laudis")
fm3<-drm(DWR~ RateM, fct=l4 (fixed =c(-0.8,0,NA,NA)),data=Combined, subset = Herbicide == "Impact")


plot(fm1, add=T,col=1,lty=1, lwd=3,pch=1, bp=0.01, xlim=c(0,850))
plot(fm2, add=T,col=2,lty=1, lwd=3,pch=2, bp=0.01, xlim=c(0,850))
plot(fm3, add=T,col=3,lty=1, lwd=3,pch=3, bp=0.01, xlim=c(0,850))


legend ("bottomright", legend= c ("Mesotrione","Tembotrione","Topramezone"),col=c(1,2,3), lty=c(1,1,1),lwd=3,pch=c(1,2,3))

summary (fm1)
summary (fm2)
summary (fm3)


ED(fm1,c(50, 70, 90))
ED(fm2,c(50, 70, 90))
ED(fm3,c(50, 70, 90))



#############################################################################################################
