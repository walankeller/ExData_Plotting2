#Download and load data for Exploratory Data Analysis Class Project #2
#Particulate Matter

#setwd("C://Users//akeller.HARDEN//Documents//GitHub//ExData_Plotting2")

# Data Descriptions:
# PM2.5 Emissions Data (summarySCC_PM25.rds): This file contains a data frame with all of the PM2.5 emissions data for 1999, 2002, 2005, and 2008. For each year, the table contains number of tons of PM2.5 emitted from a specific type of source for the entire year. Here are the first few rows.
# nOBS = 6,497,651
# fips: A five-digit number (represented as a string) indicating the U.S. county
# SCC: The name of the source as indicated by a digit string (see source code classification table)
# Pollutant: A string indicating the pollutant
# Emissions: Amount of PM2.5 emitted, in tons
# type: The type of source (point, non-point, on-road, or non-road)
# year: The year of emissions recorded

# str(neidata)
# $ fips     : chr  "09001" "09001" "09001" "09001" ...
# $ SCC      : chr  "10100401" "10100404" "10100501" "10200401" ...
# $ Pollutant: chr  "PM25-PRI" "PM25-PRI" "PM25-PRI" "PM25-PRI" ...
# $ Emissions: num  15.714 234.178 0.128 2.036 0.388 ...
# $ type     : chr  "POINT" "POINT" "POINT" "POINT" ...
# $ year     : int  1999 1999 1999 1999 1999 1999 1999 1999 1999 1999 ...

# Source Classification Code Table (Source_Classification_Code.rds): 
# This table provides a mapping from the SCC digit strings in the Emissions table 
# to the actual name of the PM2.5 source. 
# The sources are categorized in a few different ways from more general to more specific and you may choose to explore whatever categories you think are most useful.
# For example, source "10100101" is known as "Ext Comb /Electric Gen /Anthracite Coal /Pulverized Coal".
# str(sccdata)
# $ SCC                : Factor w/ 11717 levels "10100101","10100102",..: 1 2 3 4 5 6 7 8 9 10 ...
# $ Data.Category      : Factor w/ 6 levels "Biogenic","Event",..: 6 6 6 6 6 6 6 6 6 6 ...
# $ Short.Name         : Factor w/ 11238 levels "","2,4-D Salts and Esters Prod /Process Vents, 2,4-D Recovery: Filtration",..: 3283 3284 3293 3291 3290 3294 3295 3296 3292 3289 ...
# $ EI.Sector          : Factor w/ 59 levels "Agriculture - Crops & Livestock Dust",..: 18 18 18 18 18 18 18 18 18 18 ...
# $ Option.Group       : Factor w/ 25 levels "","C/I Kerosene",..: 1 1 1 1 1 1 1 1 1 1 ...
# $ Option.Set         : Factor w/ 18 levels "","A","B","B1A",..: 1 1 1 1 1 1 1 1 1 1 ...
# $ SCC.Level.One      : Factor w/ 17 levels "Brick Kilns",..: 3 3 3 3 3 3 3 3 3 3 ...
# $ SCC.Level.Two      : Factor w/ 146 levels "","Agricultural Chemicals Production",..: 32 32 32 32 32 32 32 32 32 32 ...
# $ SCC.Level.Three    : Factor w/ 1061 levels "","100% Biosolids (e.g., sewage sludge, manure, mixtures of these matls)",..: 88 88 156 156 156 156 156 156 156 156 ...
# $ SCC.Level.Four     : Factor w/ 6084 levels "","(NH4)2 SO4 Acid Bath System and Evaporator",..: 4455 5583 4466 4458 1341 5246 5584 5983 4461 776 ...
# $ Map.To             : num  NA NA NA NA NA NA NA NA NA NA ...
# $ Last.Inventory.Year: int  NA NA NA NA NA NA NA NA NA NA ...
# $ Created_Date       : Factor w/ 57 levels "","1/27/2000 0:00:00",..: 1 1 1 1 1 1 1 1 1 1 ...
# $ Revised_Date       : Factor w/ 44 levels "","1/27/2000 0:00:00",..: 1 1 1 1 1 1 1 1 1 1 ...
# $ Usage.Notes        : Factor w/ 21 levels ""," ","includes bleaching towers, washer hoods, filtrate tanks, vacuum pump exhausts",..: 1 1 1 1 1 1 1 1 1 1 ...

#look at table of SCC vs SCC Levels or the like?

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

print("getData.R script complete")

