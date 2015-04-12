source('load_data.R')
png('plot4.png',bg='transparent')

par(mfrow=c(2,2))

plot(d$Time, d$Global_active_power, type='l', xlab='',
     ylab="Global Active Power")

plot(d$Time, d$Voltage, type='l', xlab='datetime', ylab='Voltage')

plot(d$Time, d$Sub_metering_1,type='l', col='black', xlab='', 
     ylab='Energy sub metering')
lines(d$Time, d$Sub_metering_2, col='red')
lines(d$Time, d$Sub_metering_3, col='blue')
legend('topright', col=c('black', 'red', 'blue'), 
       c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty=1, box.lwd=0)

plot(d$Time, d$Global_reactive_power, type='n', xlab='datetime', 
     ylab='Global_reactive_power')
lines(d$Time, d$Global_reactive_power)

dev.off()
