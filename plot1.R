system ("head -1 /home/kevin/project1/household_power_consumption.txt > /home/kevin/project1/filteredData")

system ( "grep -w \"1/2/2007\" /home/kevin/project1/household_power_consumption.txt >> /home/kevin/project1/filteredData", intern =  FALSE)

system ( "grep -w \"2/2/2007\" /home/kevin/project1/household_power_consumption.txt >> /home/kevin/project1/filteredData", intern =  FALSE)

system("dos2unix /home/kevin/project1/filteredData")

data <- read.csv ( "/home/kevin/project1/filteredData", sep=";", header=TRUE)


png(filename = "/home/kevin/project1/plot1.png")


hist (data$Global_active_power,breaks=13,main="Global Active Power", xlab = "Global Active Power (kilowatts)", freq = T, col = "red", ylim= c(0,1200), xlim=c(0,6))


dev.off() # this writes the file.
