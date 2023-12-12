## Project
### Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. 
### Different electrical quantities and some sub-metering values are available.
install.packages("dplyr")
library(dplyr)
### Download the dataset
file_name <- "household_power_consumption.txt"
house_power <- read.table(file_name, header = TRUE, sep = ";", dec = ".", na.strings = "?")

## Just Subsetting data from the dates 2007-02-01 and 2007-02-02
new_data <- house_power[house_power$Date %in% c("1/2/2007","2/2/2007"), ]
View(new_data)
hist(new_data[, 3], col = "cyan", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
