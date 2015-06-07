# Generated the dataset.txt file with only 1/2/2007 and 2/2/2007 data, Since provided data set is too big to load on my vm slice.
File <- "dataset.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActPower <- as.numeric(data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActPower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
