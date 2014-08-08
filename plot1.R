# Load data
source("data.R")

# Open png device
png(filename= "plot1.png")


# Make plot
hist(power$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", col="red")

# Turn off device
dev.off()