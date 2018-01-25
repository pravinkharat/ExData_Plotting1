household_power_consumption <- read.table("~/R/ExploratoryDataAnalysis/Week1/week/household_power_consumption.txt",header= TRUE, sep=";")
sub <- household_power_consumption[household_power_consumption$Date %in% c('1/2/2007','2/2/2007'),]

gactive_power <- as.numeric(sub$Global_active_power)
png("plot1.png", width=480, height=480)
hist(gactive_power,col = "red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")
dev.off()
