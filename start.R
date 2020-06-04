# Clear plots
if(!is.null(dev.list())) dev.off()
# Clear console
cat("\014") 
# Clean workspace
rm(list=ls())
# Set working directory
setwd("C:/Users/seacr/Desktop/Side Projects/Korea Education Project")
library(ProjectTemplate)
load.project()

