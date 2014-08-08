# Load data
source("data.R")

# Open device
        png(filename="plot4.png")

## Make plots in two rows and two cols
        par(mfrow=c(2,2))

# Top left plot
        plot(power$date.time, power$Global_active_power,
             ylab="Global Active Power", xlab="", type="l")

# Top right
        plot(power$date.time, power$Voltage, ylab="Voltage", 
             xlab="datetime", type="l")

# Bottom left
        plot(power$date.time, power$Sub_metering_1,
             ylab="Energy sub metering", xlab="", type="l")
        lines(power$date.time, power$Sub_metering_2, col = "red")
        lines(power$date.time, power$Sub_metering_3, col = "blue")
        legend("topright",
               legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
               col = c("black", "red", "blue"), lty="solid", bty="n")


# Bottom right
        plot(power$date.time, power$Global_reactive_power, 
              xlab="datetime", ylab="Global_reactive_power", type="l")


# Turn off device
        dev.off()