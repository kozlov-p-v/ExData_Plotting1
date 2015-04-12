source('load_data.R')
png('plot3.png',bg='transparent')

plot(d$Time, d$Sub_metering_1, type='l', col='black',xlab='', ylab='Energy sub metering')
lines(d$Time, d$Sub_metering_2, col='red')
lines(d$Time, d$Sub_metering_3, col='blue')
legend('topright', col=c('black', 'red', 'blue'), 
       c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),lty=1)

dev.off()
