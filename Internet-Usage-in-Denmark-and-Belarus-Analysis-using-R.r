# loading the data
dataFrame<-read.csv("WorldBankData.csv")
# creating new dataframe using the required columns
new_dataFrame <- dataFrame[(dataFrame$Country=="Denmark"|dataFrame$Country=="Belarus")&(dataFrame$year>1990),c(1,3,14)]
# getting x cordinate of denmark country
x_cordinate=new_dataFrame[new_dataFrame$Country=="Denmark",2]
# getting y cordinate of denmark country
y_cordinate=new_dataFrame[new_dataFrame$Country=="Denmark",3]
# plotting 
plot(x_cordinate,y_cordinate)
lines(lowess(x_cordinate,y_cordinate), col="red")
# getting x cordinate of belarus country
x_cordinate=new_dataFrame[new_dataFrame$Country=="Belarus",2]
# getting y cordinate of belarus country
y_cordinate=new_dataFrame[new_dataFrame$Country=="Belarus",3]
# plotting
plot(x_cordinate,y_cordinate)
lines(lowess(x_cordinate,y_cordinate), col="yellow")