library(readxl)
library(mgcv)
library(lattice)
library(MASS)
library (nlme)
library(MuMIn)
library(lme4)
library(ggplot2)
library(plyr)
library(ggpubr)
library(jtools)
library(pscl)
library(grid)
library(dplyr)
library(scales)
library(gridExtra)
#FIJANDO UBICACION 
setwd("C:/Users/50247/Desktop/UVG 2020/Evaluación ecológica/EER")

EER <- read_excel("EER.xlsx")
EER[EER=="na"]<-NA
View(EER)
Abundancias1 <- EER %>%
  group_by(Intervalo, Localidad, Fecha) %>%
  summarise(Unique_Elements = n_distinct(Especie))
View(Abundancias1)
  