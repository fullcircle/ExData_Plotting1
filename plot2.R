data <- read.csv("/home/kevin/project1/filteredData", sep=";",  header = TRUE) 

wDays <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')


png(filename = "/home/kevin/project1/plot2.png")


plot(wDays, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off() # this writes the file.





