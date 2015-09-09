initial<-read.table("household_power_consumption.txt",nrows=100,header=TRUE,sep = ";",stringsAsFactors=FALSE)
#initial$Date<-as.Date(initial$Date,format="%d/%m/%Y")
#initial$Time<-strptime(initial$Time,format="%H:%M:%S")

classes<-sapply(initial,class)
tabAll<-read.table("household_power_consumption.txt",header=TRUE,sep = ";",stringsAsFactors=FALSE,na.strings="?",fill=TRUE,colClasses=classes)
tabAll$Date<-as.Date(tabAll$Date,format="%d/%m/%Y")
subtab<-tabAll[which(tabAll$Date=="2007-02-01"|tabAll$Date=="2007-02-02"),]
date_time<-paste(subtab$Date,subtab$Time)
date_time<-strptime(date_time, "%Y-%m-%d %H:%M:%S")
subtab2<-cbind(subtab,date_time)

#Plot1
library(datasets)
with(subtab2,hist(subtab2$Global_active_power,main="Global Active Power",xlab="Global Active Power(kilowatts)",col="red",ylim=c(0,1200)))
dev.copy(png,file="plot1.png")
dev.off()
