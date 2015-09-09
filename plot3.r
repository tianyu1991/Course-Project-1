#Plot3
png(file = "plot3.png", width = 480, height = 480)
with(subtab2,plot(date_time,Sub_metering_1,type="l",xlab="",ylab="Enery sub metering"))
with(subtab2,lines(date_time,Sub_metering_2,col="red"))
with(subtab2,lines(date_time,Sub_metering_3,col="blue"))
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
