setwd("C:/Users/shafae1/ExData_Plotting1")
library("data.table")
d <- fread("household_power_consumption.txt", na.strings = "?")
d <- subset(d, Date %in% c("1/2/2007","2/2/2007"))
t <- strptime(paste(d$Date,d$Time), format = "%d/%m/%Y %H:%M:%S")
png("plot4.png")
par(mfrow = c(2,2))
plot(t,d$Global_active_power, type = "l",
     ylab = "Global Active Power", 
     xlab = "Time")
plot(t,d$Voltage, type = "l",
     ylab = "Energy Sub Metering", 
     xlab = "Time")
plot(t,d$Sub_metering_1, type = "l",
     ylab = "Energy Sub Metering", 
     xlab = "Time")
lines(t,d$Sub_metering_2, col = "red")
lines(t,d$Sub_metering_3, col = "blue")
legend("topright", 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       lty = "solid", 
       col = c("black","red","blue"))
plot(t,d$Global_reactive_power, type = "l",
     ylab = "Global Reactive Power", 
     xlab = "Time")
dev.off()