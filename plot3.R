setwd("C:/Users/shafae1/ExData_Plotting1")
library("data.table")
d <- fread("household_power_consumption.txt", na.strings = "?")
d <- subset(d, Date %in% c("1/2/2007","2/2/2007"))
t <- strptime(paste(d$Date,d$Time), format = "%d/%m/%Y %H:%M:%S")
png("plot3.png")
plot(t,d$Sub_metering_1, type = "l",
     ylab = "Energy Sub Metering", 
     xlab = "Day")
lines(t,d$Sub_metering_2, col = "red")
lines(t,d$Sub_metering_3, col = "blue")
legend("topright", 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       lty = "solid", 
       col = c("black","red","blue"))
dev.off()