source('load_data.R')
png('plot2.png',bg='transparent')
plot(d$Time, d$Global_active_power, main='Global Active Power', type='l',
     xlab = '', ylab='Global Active Power (kilowatts)')
dev.off()
