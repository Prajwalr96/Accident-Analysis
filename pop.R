library(readxl)
input <- read_excel("C:/Users/Prajwal/Desktop/DW/input.xlsx")
View(input)

# Create the data for the chart.
v <- c(55000,64000,59000,69000,54541)

# Give the chart file a name.
png(file = "C:/Users/Prajwal/Desktop/DW/line1.jpg")

# Plot the bar chart.
plot(v,type = "o", col = "red", xlab = "Year", ylab = "Deaths",xlim = c(2004,2016), ylim = c(55000,75000),
     main = "Vehicular Accident in India")

# Create the predictor and response variable.
x <- c(2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015)
y <- c(560250,602230,627784,643053,641118,662025,653897,647925,681902,693484,705065)
relation <- lm(y~x)

# Give the chart file a name.
png(file = "linearregression.png")

#predict
a <- data.frame(x = 2020)
result <-  predict(relation,a)
print(result)

# Plot the chart.
plot(y,x,col = "blue",main = "DEATH AND ACCIDENT REGRESION",
     abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "YEARS",ylab = "DEATHS")


# Save the file.
dev.off()
