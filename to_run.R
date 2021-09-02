#-------------------------------
# ARS - Data Model Visualization Script
# v0.0 - 30 August 2021
# authors: Giorgio Limoncella
# -----------------------------

rm(list=ls(all.names=TRUE))

#library
library("readxl")
library("rmarkdown")
library("DT")
library("rmdformats")
library("kableExtra")

# library(devtools)
# install_github("holtzy/epuRate")
# library(epuRate)


#set the directories
if (!require("rstudioapi")) install.packages("rstudioapi")
thisdir<-setwd(dirname(rstudioapi::getSourceEditorContext()$path))
thisdir<-setwd(dirname(rstudioapi::getSourceEditorContext()$path))

dirbase<-getwd()
dirinput <- paste0(dirbase,"/i_input/")
dirmacro <- paste0(thisdir,"/p_macro/")

#render the macro 
render(paste0(dirmacro,"DataModelMacro_robobook.Rmd"),           
       output_dir = thisdir,
       output_file = "index")