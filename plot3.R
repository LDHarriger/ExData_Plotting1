#plot 3
plot(DateTime, pwrUse$Sub_metering_1, type = "l", xlab = "", ylab = "Energy submetering")
lines(DateTime, pwrUse$Sub_metering_2, col = "red")
lines(DateTime, pwrUse$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = c(1,1,1),col=c("black", "red", "blue"))
