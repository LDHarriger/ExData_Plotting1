fname <- "household_power_consumption.txt"
pwrUse <- read.table(fname, header = T, sep = ";")


pwrUse$Date = as.Date(pwrUse$Date, "%d/%m/%Y")
pwrUse = pwrUse[pwrUse$Date >= "2007-02-01" & pwrUse$Date < "2007-02-03",]

#DateTime = paste(Date, pwrUse$Time)
#DateTime = strptime(DateTime, "%Y-%m-%d %H:%M:%S")

DateTime = as.POSIXct(paste(pwrUse$Date,pwrUse$Time), "%Y-%m-%d %H:%M:%S")

#plot 1
p1 <- hist(pwrUse$Global_active_power,main = "Global Active Power", col = 'Red')


#plot 2
plot(DateTime, pwrUse$Global_active_power,type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")


#plot 3
plot(DateTime, pwrUse$Sub_metering_1, type = "l", xlab = "", ylab = "Energy submetering")
lines(DateTime, pwrUse$Sub_metering_2, col = "red")
lines(DateTime, pwrUse$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = c(1,1,1),col=c("black", "red", "blue"))

#plot 4
par(mfrow = c(2,2))
#1
plot(DateTime, pwrUse$Global_active_power,type = "l", xlab = "", ylab = "Global Active Power")
#2
plot(DateTime, pwrUse$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
#3
plot(DateTime, pwrUse$Sub_metering_1, type = "l", xlab = "", ylab = "Energy submetering")
lines(DateTime, pwrUse$Sub_metering_2, col = "red")
lines(DateTime, pwrUse$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = c(1,1,1),col=c("black", "red", "blue"))
#4
plot(DateTime, pwrUse$Global_reactive_power,type="l",xlab = "datetime", ylab = "Global_reactive_power")
