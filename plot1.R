#Set the working directory and place source file in the path
hs_data<-read.table("household_power_consumption.txt",sep=";",na.strings="?",header=T)
hs_data$datetime<-strptime(paste(hs_data[,1],hs_data[,2]),"%d/%m/%Y %H:%M:%S")
library(dplyr)
household_data<-filter(hs_data,datetime>="2007-02-01" & datetime<"2007-02-03")
png("plot1.png")
hist(household_data$Global_active_power,xlab="Global Active Power(kilowatts)",main="Global Active Power",col="red")
dev.off()
