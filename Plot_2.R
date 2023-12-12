file_name <- "household_power_consumption.txt"
house_power <- read.table(file_name, header = TRUE, sep = ";", dec = ".", na.strings = "?")
new_data <- house_power[house_power$Date %in% c("1/2/2007","2/2/2007"), ]
Sys.setlocale("LC_TIME", "English")
date_converted <- as.Date(new_data[, 1], format = "%d/%m/%Y")
time_converted <- strptime(new_data[, 2], format = "%H:%M:%S")
time_axis <- as.POSIXct(paste(date_converted, new_data[, 2]))
plot(time_axis, new_data[, 3], xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")
