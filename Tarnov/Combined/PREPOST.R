# -----------------------------------------------------------------------------
# Program: R  
# Author: Maxwel C Oliveira
# Date: 02/10/2015
# Purpose: PRE and POST
# -----------------------------------------------------------------------------



setwd("C:/Users/NECWEEDS/Documents/DATA/Tarnov/Combined")
dir()

library(XLConnect)
library(drc)
library (RODBC)


Post=loadWorkbook("Post.xlsx")
# Read the data on the sheet named "plot"
Combined = readWorksheet(Post, sheet = "plot", header = T)

head (Combined)
Combined  #this will show data

#ANOVA

# Randomized Block Design (B is the blocking factor) 
fit <- aov(y ~ trt + block, data=Combined)

fit

summary(fit) # display Type I ANOVA table
drop1(fit,~.,test="F") # type III SS and F Tests

#Tukey Honestly Significant Differences
TukeyHSD(fit)




require(ggplot2)
require(plotrix)
require(reshape)
require(rggobi)
require(profr)





#Post Emergence Herbicides - 22 DAT


#Vertical bars
X11()
#Adjust margins (bottom, left, top,right)
par(mar=c(5.1, 13 ,2.1 ,2.1))

Percentage=c(94,89,90,43,89)


barplot(Percentage, width = 15, space = 1, xlab="Control (%)", 
cex.names=2.0, xlim=c(0,100), ylim=c(10,150), horiz=T, names.arg=c("Glyphosate (1575 g ai/ha)", "Mesotrione/atrazine (196 g ai/ha) +  
                                                                                                  glufosinate (594 g ai/ha)", "Metribuzin (210 g ai/ha) + 
                                                                                                            mesotrione/atrazine (196 g ai/ha)", "Mesotrione (105 g ai/ha) + 
                                                                                                            fluthiacet-methyl (7 g ai/ha)", "Diflufenzopyr/dicamba (196 g ai/ha) + 
                                                                                                            Mesotrione/atrazine (196 g ai/ha)"),
                                                                                                              
        
        las=2, border="black", density=c(10,20,30,40,50))
box()


#With colors

colors=c("darkgreen","darkgreen", "darkgreen", "red", "darkgreen")

barplot(Percentage, xlab="control (%)", cex.names=2, width=0.05, main="POST emergence control - 22 DAT", cex.lab=2, xlim=c(0,100), horiz=T, names.arg=c("Glyphosate (1575 g ai/ha)", "Mesotrione/atrazine (196 g ai/ha) +  
                                                                                                  glufosinate (594 g ai/ha)", "Metribuzin (210 g ai/ha) + 
                                                                                                            mesotrione/atrazine (196 g ai/ha)", "Mesotrione (105 g ai/ha) + 
                                                                                                            fluthiacet-methyl (7 g ai/ha)", "Diflufenzopyr/dicamba (196 g ai ha) + 
                                                                                                            Mesotrione/atrazine (196 g ai/ha)"),
                                                                                                              
        las=2, col=colors, border="black")

#legend("center", legend= c("SE diff=5"))


                                                                                                                 
#PRE Residual - 50 DAT

#Adjust margins to the right (bottom, left, top,right)
par(mar=c(5.1,15.8,2.2,2.1))

Percentage=c(98,83,96,85,55,82,90,92,86)

colors=c("darkgreen","yellow", "darkgreen", "yellow", "red", "yellow", "darkgreen", "darkgreen", "yellow")


barplot(Percentage, width = 11, space=0.5, xlab="Control (%)", cex.lab=2.0, cex.names=1, xlim=c(0,100), ylim=c(10,150), horiz=T, names.arg=c("Atraz/mesot/s-metolac (1389 g ai/ha)
                                                                                                              + acetochlor (1470 g ai/ha) ", 
                                                                                                            "Thiencarbazone/isoxaflutole (129 g ai/ha) 
                                                                                                              + atrazine (1793 g ai/ha)",
                                                                                                            "Pyroxasulfone (179 g ai/ha)  
                                                                                                             + suflaf (75 g ai/ha) + Atraz (560 g ai/ha)", "Suflafenacil/dimethenamid (731 g ai/ha) 
                                                                                                             + dimethenamid (263 g ai/ha)", "Pyroxasulfone (108 g ai/ha)", "Pyroxasulfone (216 g ai/ha)", "Pyroxasulfone (324 g ai/ha)",  
                                                                                                            "Acetoc/flumes/clopyr (1488 g ai/ha)",
                                                                                                             "Pyroxasulfone/atrazine (1260 g ai/ha)"), 
                                                                                                            
                                                                                                             
        las=2, col=colors, border="black")
        
        #las=2, border="black", density=c(10,20,30,40,50,60,70,80,90))

box()

#legend("bottomleft", legend= c("SE diff=7"))

#With colors

colors=c("darkgreen","yellow", "darkgreen", "yellow", "red", "yellow", "darkgreen", "darkgreen", "yellow")


barplot(Percentage, xlab="Control (%)", main="PRE emergence control - 50 DAT",  cex.names=0.8, cex.lab=1.4, width=0.02, xlim=c(0,100), horiz=T, names.arg=c(("Atrazine/mesotrione/s-metolachlor (1389 g ai/ha)
                                                                                                              + acetochlor (1470 g ai/ha)" 
                                                                                                              "Thiencarbazone/isoxaflutole (129 g ai/ha) 
                                                                                                              + atrazine (1793 g ai/ha)",
                                                                                                               "Pyroxasulfone (179 g ai/ha)  
                                                                                                             + suflafenacil (75 g ai/ha) + Atrazine (560 g ai/ha)", "Suflafenacil/dimethenamid (731 g ai/ha) 
                                                                                                             + dimethenamid (263 g ai/ha)", "Pyroxasulfone (108 g ai/ha)", "Pyroxasulfone (216 g ai/ha)", "Pyroxasulfone (324 g ai/ha)",  
                                                                                                              "Acetochlor/flumesulam/clopyralid (1488 g ai/ha)",
                                                                                                              "Pyroxasulfone/atrazine (1260 g ai/ha)"), 
                                                                                                      
        las=2, col=colors, border="black")


#legend("center", legend= c("SE diff=7"))


###############################################################################

PRE POST

x = data.frame(Herbicide = c("1", "2", "3", "4", "5", "6"),
                PRE = c(100,90,70,80,90,80),
                POST = c(100,90,100,95,80,70))


x <- melt(x, id = 'Herbicide')

ggplot(x, aes(x = Herbicide, fill = variable)) +
  geom_bar(stat="identity", ymin=0, aes(y=value, ymax=value), position="dodge") +
  geom_text(aes(x=Herbicide, y=value, ymax=value, label=value, 
                hjust=ifelse(sign(value)>0, 1, 0)), 
            position = position_dodge(width=1)) +
  scale_y_continuous(labels = percent_format()) +
  coord_flip()

###############################################################################

