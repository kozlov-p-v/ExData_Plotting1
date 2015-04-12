source('load_data.R')
png('plot1.png',bg='transparent')
hist(d$Global_active_power, main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', ylab='Frequency', col='red')
dev.off()
