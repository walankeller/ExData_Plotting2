# plot1.r creates plot1.png
# Question: Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? 
# Use the base plotting system to make a plot answering this question.

source("getData.R")

# hw note: use base plotting system
png(filename="plot1.png"
    ,width=480
    ,height=480
    ,units="px"
    ,bg=NA)
hist(x=hpc_filtered$global_active_power
     ,col="red"
     ,main="Global Active Power"
     ,xlab="Global Active Power (kilowats)")
dev.off()