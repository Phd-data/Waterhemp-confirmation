library(drc)
library (RODBC)

# Reading data file with Dry matter reduction (%)

Waterhemp1<-read.csv("C:\\A\\UNL research\\Data\\water stress\\Final\\Plant height\\Exp-1\\HtR.csv")
#, sqtable = "BM", # na.strings = "NA", as.is = TRUE) 

head (Waterhemp1)
str(Waterhemp1)

fm1<-drm(Ht ~ DAT, fct=l4 (fixed =c(NA,0,NA,NA)),data=Waterhemp1, subset = Trt == 1)
modelFit (fm1)

fm2<-drm(Ht ~ DAT, fct=l4 (fixed =c(NA,0,NA,NA)),data=Waterhemp1, subset = Trt == 2)
modelFit (fm2)

fm3<-drm(Ht ~ DAT, fct=l4 (fixed =c(NA,0,NA,NA)),data=Waterhemp1, subset = Trt == 3)
modelFit (fm3)

fm4<-drm(Ht ~ DAT, fct=l4 (fixed =c(NA,0,NA,NA)),data=Waterhemp1, subset = Trt == 4)
modelFit (fm4)

fm5<-drm(Ht ~ DAT, fct=l4 (fixed =c(NA,0,NA,NA)),data=Waterhemp1, subset = Trt == 5)
modelFit (fm5)

Waterhemp1<-read.csv("C:\\A\\UNL research\\Data\\water stress\\Final\\Leaves per plant\\Exp-1\\LvR.csv")
#, sqtable = "BM", # na.strings = "NA", as.is = TRUE) 

head (Waterhemp1)
str(Waterhemp1)

fm6<-drm(Lv ~ DAT, fct=l4 (fixed =c(NA,0,NA,NA)),data=Waterhemp1, subset = Trt == 1)
modelFit (fm1)

fm7<-drm(Lv ~ DAT, fct=l4 (fixed =c(NA,0,NA,NA)),data=Waterhemp1, subset = Trt == 2)
modelFit (fm2)

fm8<-drm(Lv ~ DAT, fct=l4 (fixed =c(NA,0,NA,NA)),data=Waterhemp1, subset = Trt == 3)
modelFit (fm3)

fm9<-drm(Lv ~ DAT, fct=l4 (fixed =c(NA,0,NA,NA)),data=Waterhemp1, subset = Trt == 4)
modelFit (fm4)

fm10<-drm(Lv ~ DAT, fct=l4 (fixed =c(NA,0,NA,NA)),data=Waterhemp1, subset = Trt == 5)
modelFit (fm5)

Waterhemp1<-read.csv("C:\\A\\UNL research\\Data\\water stress\\Final\\Growth index\\Exp-1\\GIR.csv")
#, sqtable = "BM", # na.strings = "NA", as.is = TRUE) 

head (Waterhemp1)
str(Waterhemp1)

fm11<-drm(GI ~ DAT, fct=l4 (fixed =c(NA,0,NA,NA)),data=Waterhemp1, subset = Trt == 1)
modelFit (fm1)

fm12<-drm(GI ~ DAT, fct=l4 (fixed =c(NA,0,NA,NA)),data=Waterhemp1, subset = Trt == 2)
modelFit (fm2)

fm13<-drm(GI ~ DAT, fct=l4 (fixed =c(NA,0,NA,NA)),data=Waterhemp1, subset = Trt == 3)
modelFit (fm3)

fm14<-drm(GI ~ DAT, fct=l4 (fixed =c(NA,0,NA,NA)),data=Waterhemp1, subset = Trt == 4)
modelFit (fm4)

fm15<-drm(GI ~ DAT, fct=l4 (fixed =c(NA,0,NA,NA)),data=Waterhemp1, subset = Trt == 5)
modelFit (fm5)

#plot first 4 lines on Fig 1
layout(matrix(1:3, ncol = 1), widths = 1, heights = c(1.5,1.5,2), respect = FALSE)
par(mar=c(0,7,1,2), mgp=c(4.5,1,0))
plot(fm1, log="", bp=0,  xlim=c(0,90), cex=1.8, cex.axis=1.3, cex.lab=1.5, ylim=c(0,160), xlab="", ylab="Plant height (cm)", col=1, lwd=2.3, pch=1) #, main="Fig 1a")
plot(fm2, add=T,col=1,cex=1.4,lty=2, lwd=2.3,pch=2, xlim=c(0,90))
plot(fm3, add=T,col=1,cex=1.4,lty=3, lwd=2.3,pch=3, xlim=c(0,90))
plot(fm4, add=T,col=1,cex=1.4,lty=4, lwd=2.3,pch=8, xlim=c(0,90))
plot(fm5, add=T,col=1,cex=1.4,lty=5, lwd=2.3,pch=5, xlim=c(0,90))

legend (0,162, legend= c ("100% field capacity", "75% field capacity", "50% field capacity", "25% field capacity", "12.5% field capacity"), col=c(1,1,1,1,1),lty=c(1,2,3,4,5), pch = c(1,2,3,8,5), cex=1.1, bty="n")

par(mar=c(0,7,0,2), mgp=c(4.5,1,0))
plot(fm6, log="", bp=0, xlim=c(0,90), cex=1.8, cex.axis=1.3, cex.lab=1.5, ylim=c(0,260), ylab=expression("Leaves plant "^"-1"*""), col=1, lwd=2.3, pch=1) #, main="Fig 1a")
plot(fm7, add=T,col=1,cex=1.4, lty=2, lwd=2.3,pch=2, xlim=c(0,90))
plot(fm8, add=T,col=1, cex=1.4, lty=3, lwd=2.3,pch=3, xlim=c(0,90))
plot(fm9, add=T,col=1, cex=1.4, lty=4, lwd=2.3,pch=8, xlim=c(0,90))
plot(fm10, add=T,col=1, cex=1.4, lty=5, lwd=2.3,pch=5, xlim=c(0,90))

par(mar=c(8.5,7,0,2), mgp=c(4.5,1,0))
plot(fm11,  bp=0, log="", xlim=c(0,90), cex=1.8, cex.axis=1.3, cex.lab=1.5, ylim=c(0,560000), xlab= "Days after planting", ylab= expression("Growth index (cm"^"3"*")"), col=1, lwd=2.3, pch=1) #, main="Fig 1a")
plot(fm12, add=T,col=1, cex=1.4, lty=2, lwd=2.3,pch=2, xlim=c(0,90))
plot(fm13, add=T,col=1, cex=1.4, lty=3, lwd=2.3,pch=3, xlim=c(0,90))
plot(fm14, add=T,col=1, cex=1.4, lty=4, lwd=2.3,pch=8, xlim=c(0,90))
plot(fm15, add=T,col=1, cex=1.4, lty=5, lwd=2.3,pch=5, xlim=c(0,90))

