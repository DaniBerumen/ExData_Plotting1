file_name <- "household_power_consumption.txt"
house_power <- read.table(file_name, header = TRUE, sep = ";", dec = ".", na.strings = "?")
new_data <- house_power[house_power$Date %in% c("1/2/2007","2/2/2007"), ]
# Function to plot a single time series
plot_time_series <- function(x, y, xlab = "", ylab = "", col = "black", ...) {
  plot(x, y, xlab = xlab, ylab = ylab, col = col, type = "l", ...)
}

# Plot the Global Active Power
par(mfrow = c(2, 2))

plot_time_series(time_axis, new_data[, 3], ylab = "Global Active Power (kilowatts)")

# Plot Voltage
plot_time_series(time_axis, new_data[, 5], xlab = "datetime", ylab = "Voltage")

# Plot Energy sub metering
plot_time_series(time_axis, new_data[, 7], ylab = "Energy sub metering")
lines(time_axis, new_data[, 8], col = "cyan")
lines(time_axis, new_data[, 9], col = "pink")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black","cyan","pink"), cex = 0.8, lty = 1 , bty = "n")

# Plot Global Reactive Power
plot_time_series(time_axis, new_data[, 4], xlab = "datetime", ylab = "Global Reactive Power")
