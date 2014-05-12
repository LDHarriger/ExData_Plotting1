fname <- "household_power_consumption.txt"
pwrUse <- read.table(fname, header = T, sep = ";")


pwrUse$Date = as.Date(pwrUse$Date, "%d/%m/%Y")
pwrUse = pwrUse[pwrUse$Date >= "2007-02-01" & pwrUse$Date < "2007-02-03",]

#DateTime = paste(Date, pwrUse$Time)
#DateTime = strptime(DateTime, "%Y-%m-%d %H:%M:%S")

DateTime = as.POSIXct(paste(pwrUse$Date,pwrUse$Time), "%Y-%m-%d %H:%M:%S")

#plot 1
p1 <- hist(pwrUse$Global_active_power,main = "Global Active Power", col = 'Red')

