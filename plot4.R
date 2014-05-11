

png(filename = "/home/kevin/project1/plot4.png")

par( mfrow = c( 2, 2 ), oma = c( 0, 0, 2, 0 ) )
plot(wDays, data$Global_active_power, type="l", xlab="", ylab="Global Active Power(kilowatts)")


plot(wDays, data$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(wDays,data$Sub_metering_1,type="l",col="black", ylab="Energy sub metering",xlab="",ylim=c(0,40))

lines(wDays,data$Sub_metering_2,type="l",col="red")
lines(wDays,data$Sub_metering_3,type="l",col="blue")


legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1),lwd=c(2.5,2.5),col=c("black","red","blue"))

plot(wDays, data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")



dev.off()
