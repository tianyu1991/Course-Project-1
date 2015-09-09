#Plot4
png(file = "plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
with(subtab2,{
	plot(date_time,Global_active_power,type="l",xlab="",ylab="Global Active Power")
	plot(date_time,Voltage,type="l",,xlab="date time",ylab="Voltage")
	plot(date_time,Sub_metering_1,type="l",xlab="",ylab="Enery sub metering")
	lines(date_time,Sub_metering_2,col="red")
	lines(date_time,Sub_metering_3,col="blue")
	legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
	plot(date_time,Global_reactive_power,type="l",,xlab="date time",ylab="Global_reactive_power")
	}
)
dev.off()
