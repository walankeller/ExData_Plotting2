#Download and load data for Exploratory Data Analysis Class Project #2
#Particulate Matter

#setwd("C://Users//akeller.HARDEN//Documents//GitHub//ExData_Plotting2")

#Fine Particulate Matter Exploratory Data Project #2
internetSource <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
zipfilename = "NEI_data.zip"
fullfilename <- file.path(getwd(), zipfilename)
if (file.exists(fullfilename)){
  print("NEI zip file already exists locally")
}else{
  print("file not found locally, so dowload from website")
  download.file(internetSource 
                , destfile=zipfilename)
}

unzip(zipfilename) #unzip contents to get two .rds files
filenameNEI = "summarySCC_PM25.rds"
filenameSCC = "Source_Classification_Code.rds"

if(exists("neidata")){
  print("NEI data already loaded into R")
}else{
  print("load neidata")
  neidata <-readRDS(filenameNEI)
}

#print("File not found, downloading from website...")
if(exists("sccdata")){
  print("SCC data already loaded into R")
}else{
  print("load sccdata")
  sccdata <-readRDS(filenameSCC) 
}

