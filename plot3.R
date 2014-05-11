
png(filename = "/home/kevin/project1/plot3.png")

plot(wDays,data$Sub_metering_1,type="l",col="black", ylab="Energy sub metering",xlab="",ylim=c(0,40))

lines(wDays,data$Sub_metering_2,type="l",col="red")
lines(wDays,data$Sub_metering_3,type="l",col="blue")


legend("topright",30, c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1),lwd=c(2.5,2.5),col=c("black","red","blue"))

dev.off()

