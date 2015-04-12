if (!file.exists('household_power_consumption.txt')) {
  download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip','household_power_consumption.zip','curl')
  unzip('household_power_consumption.zip')  
}

d <- read.table('household_power_consumption.txt', header = T, sep=';', na.strings = '?',colClasses=c(rep('character',2),rep('numeric',7)))
d$Time <- strptime(paste(d$Date, d$Time), '%d/%m/%Y %H:%M:%S')
d$Date <- as.Date(d$Date, '%d/%m/%Y')
d <- d[d$Date %in% as.Date(c('2007-02-01','2007-02-02')),]
