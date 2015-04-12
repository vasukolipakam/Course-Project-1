## Date : 11 April 2015
## Course Project 1 Plot1


dataFile <- "./household_power_consumption-2.txt"

# loading the data set

 data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)

globalActivePower <- as.numeric(subSetData$Global_active_power)

#png("plot1.png", width=480, height=480)

hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

#dev.off() 
