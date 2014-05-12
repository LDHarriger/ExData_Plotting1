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
