#Plot2
with(subtab2,plot(date_time,Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatts)"))
dev.copy(png,file="plot2.png")
dev.off()
