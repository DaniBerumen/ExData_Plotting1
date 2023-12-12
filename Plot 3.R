file_name <- "household_power_consumption.txt"
house_power <- read.table(file_name, header = TRUE, sep = ";", dec = ".", na.strings = "?")
new_data <- house_power[house_power$Date %in% c("1/2/2007","2/2/2007"), ]
plot(time_axis, new_data[, 7], xlab = "", ylab = "Energy sub metering", type = "l")
lines(time_axis, new_data[, 8], col = "cyan")
lines(time_axis, new_data[, 9], col = "pink")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black","cyan","pink"), lty = 1)
