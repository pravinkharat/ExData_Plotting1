household_power_consumption <- read.table("~/R/ExploratoryDataAnalysis/Week1/week/household_power_consumption.txt",header= TRUE, sep=";")
sub <- household_power_consumption[household_power_consumption$Date %in% c('1/2/2007','2/2/2007'),]

gactive_power <- as.numeric(sub$Global_active_power)
global_reactive_power <- as.numeric(sub$Global_reactive_power)
voltage <- as.numeric(sub$Voltage)

datetime <- strptime(paste(sub$Date,sub$Time, sep = " "),"%d/%m/%Y %H:%M:%S")

metering1 <- as.numeric(sub$Sub_metering_1)
metering2 <- as.numeric(sub$Sub_metering_2)
metering3 <- as.numeric(sub$Sub_metering_3)

  
  png("plot4.png", width=480, height=480)
  par(mfrow = c(2, 2)) 
  plot(datetime, gactive_power, type="l", xlab="", ylab="Global Active Power", cex=0.2)
  
  plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")
  
  plot(datetime, metering1, type="l", ylab="Energy Submetering", xlab="")
  lines(datetime, metering2, type="l", col="red")
  lines(datetime, metering3, type="l", col="blue")
  legend("topright", c("metering1", "metering2", "metering3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
  
  plot(datetime, global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
  
  dev.off()
