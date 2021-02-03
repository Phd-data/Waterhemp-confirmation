#Data Analysis - WATERHEMP - HPPD - 21 Days  8 cm- Dose Response -  UNL CRN TN - 2013/14

setwd("C:/Users/NECWEEDS/Documents/DATA/Tarnov/Combined")
dir()

library(XLConnect)
library(drc)
library (RODBC)


############Visual Injury Rating (IR)
########### data HPPD 3 in


Post=loadWorkbook("3in.xlsx")
# Read the data on the sheet named "dose"
Combined = readWorksheet(Post, sheet = "dose", header = T)

head (Combined)
Combined  #this will show data

#par (mfrow=c(1, 3))

plot (IR~ RateM, data = Combined,las=1,
      xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
      ylab = expression(paste("Weed Control (%)")), type="none",
      xlim=c(0,1100), ylim=c(0,100), main="21 DAT - Waterhemp 8 cm ")
fm1<-drm(IR~ RateM, fct=l4 (fixed =c(NA,0,100,NA)),data=Combined, subset = Herbicide == "Callisto")
fm2<-drm(IR~ RateM, fct=l4 (fixed =c(NA,0,100,NA)),data=Combined, subset = Herbicide == "Laudis")
fm3<-drm(IR~ RateM, fct=l4 (fixed =c(NA,0,100,NA)),data=Combined, subset = Herbicide == "Impact")


plot(fm1, add=T,col=1,lty=1, lwd=2,pch=1, bp=0.01, xlim=c(0,1100))
plot(fm2, add=T,col=1,lty=2, lwd=2,pch=2, bp=0.01, xlim=c(0,1100))
plot(fm3, add=T,col=1,lty=3, lwd=2,pch=3, bp=0.01, xlim=c(0,1100))


legend ("bottomright", legend= c ("Mesotrione","Tembotrione","Topramezone"),col=c(1,1,1), lty=c(1,2,3),lwd=1.5,pch=c(1,2,3))

summary (fm1)
summary (fm2)
summary (fm3)


ED(fm1,c(50, 70, 90))
ED(fm2,c(50, 70, 90))
ED(fm3,c(50, 70, 90))




#Data Analysis - WATERHEMP - HPPD - 21 Days  15 cm- Dose Response -  UNL CRN TN - 2013/14

setwd("C:/Users/NECWEEDS/Documents/DATA/Tarnov/Combined")
dir()

library(XLConnect)
library(drc)
library (RODBC)


############Visual Injury Rating (IR)
########### data HPPD 6 in


Post=loadWorkbook("3in.xlsx")
# Read the data on the sheet named "dose6"
Combined = readWorksheet(Post, sheet = "dose6", header = T)

head (Combined)
Combined  #this will show data

#par (mfrow=c(1, 3))

plot (IR~ RateM, data = Combined,las=1,
      xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
      ylab = expression(paste("Weed Control (%)")), type="none",
      xlim=c(0,1100), ylim=c(0,100), main="21 DAT - Waterhemp 15 cm ")
fm1<-drm(IR~ RateM, fct=l4 (fixed =c(NA,0,100,NA)),data=Combined, subset = Herbicide == "Callisto")
fm2<-drm(IR~ RateM, fct=l4 (fixed =c(NA,0,100,NA)),data=Combined, subset = Herbicide == "Laudis")
fm3<-drm(IR~ RateM, fct=l4 (fixed =c(NA,0,100,NA)),data=Combined, subset = Herbicide == "Impact")


plot(fm1, add=T,col=1,lty=1, lwd=2,pch=1, bp=0.01, xlim=c(0,1100))
plot(fm2, add=T,col=1,lty=2, lwd=2,pch=2, bp=0.01, xlim=c(0,1100))
plot(fm3, add=T,col=1,lty=3, lwd=2,pch=3, bp=0.01, xlim=c(0,1100))


legend ("bottomright", legend= c ("Mesotrione","Tembotrione","Topramezone"),col=c(1,1,1), lty=c(1,2,3),lwd=1.5,pch=c(1,2,3))

summary (fm1)
summary (fm2)
summary (fm3)


ED(fm1,c(50, 70, 90))
ED(fm2,c(50, 70, 90))
ED(fm3,c(50, 70, 90))




###################################################################################################33


#Data Analysis - WATERHEMP - HPPD - 41 Days - PRE RESIDUAL - Dose Response -  UNL CRN TN - 2013/14

setwd("C:/Users/NECWEEDS/Documents/DATA/Tarnov/Combined")
dir()

library(XLConnect)
library(drc)
library (RODBC)


############Visual Injury Rating (IR)
########### data Pre residual


Post=loadWorkbook("3in.xlsx")
# Read the data on the sheet named "pre"
Combined = readWorksheet(Post, sheet = "pre", header = T)

head (Combined)
Combined  #this will show data

#par (mfrow=c(1, 3))

plot (IR~ RateM, data = Combined,las=1,
      xlab = expression(paste("Herbicide (g ai ha "^"-1",")")),
      ylab = expression(paste("Waterhemp Control (%)")), type="none",
      xlim=c(0,12000), ylim=c(0,100), main="41 DAT - Preemergence herbicides")
fm1<-drm(IR~ RateM, fct=l4 (fixed =c(NA,0,100,NA)),data=Combined, subset = Herbicide == "Lumax")
fm2<-drm(IR~ RateM, fct=l4 (fixed =c(NA,0,100,NA)),data=Combined, subset = Herbicide == "Callisto")
fm3<-drm(IR~ RateM, fct=l4 (fixed =c(NA,0,100,NA)),data=Combined, subset = Herbicide == "CDA")


plot(fm1, add=T,col=1,lty=1, lwd=2,pch=1, bp=0.01, xlim=c(0,12000))
plot(fm2, add=T,col=1,lty=2, lwd=2,pch=2, bp=0.01, xlim=c(0,12000))
plot(fm3, add=T,col=1,lty=3, lwd=2,pch=3, bp=0.01, xlim=c(0,12000))


legend ("bottomright", legend= c ("Mesotrione/atrazine/s-metolachlor","Mesotrione", "Mesotrione+atrazine+s-metolachlor"),col=c(1,1,1), lty=c(1,2,3),lwd=1.5,pch=c(1,2,3))

summary (fm1)
summary (fm2)
summary (fm3)


