# Load data
source("data.R")

# Open png device
png(filename= "plot2.png")


# Make plot
plot(power$date.time, power$Global_active_power, 
     ylab = "Global Active Power (kilowatts)", 
     xlab = "", type = "l")

# Turn off device
dev.off()