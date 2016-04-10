powerconsumption<-read.csv(file="household_power_consumption.txt",sep=";",header=TRUE)
powerconsumption$Date<-as.Date(as.character(powerconsumption$Date),format="%d/%m/%Y")
powerconsumptionsubset<-subset(powerconsumption, Date=="2007-02-01"|Date=="2007-02-02")
hist(powerconsumptionsubset$Global_active_power, xlab="Global Active Power (kilowatts)",main="Global Active Power", col="red")