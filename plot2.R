setwd("C:/Users/shafae1/ExData_Plotting1")
library("data.table")
d <- fread("household_power_consumption.txt", na.strings = "?")
d <- subset(d, Date %in% c("1/2/2007","2/2/2007"))
t <- strptime(paste(d$Date,d$Time), format = "%d/%m/%Y %H:%M:%S")
png("plot2.png")
plot(t,d$Global_active_power, type = "l",ylab = "Global Active Power (kilowatts)", xlab = "Day")
dev.off()