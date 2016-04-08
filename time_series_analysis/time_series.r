library(zoo)
library(forecast)

csv_file <- read.table(file.choose(),header=TRUE,sep=",") # load the Walmart_train.csv file
csv_file$Date <- as.Date(csv_file$Date) # convert into date format

store_11 <- csv_file[csv_file$Store==1&csv_file$Dept==1, c("Date","Weekly_Sales")] # select a subset with store of 1 and dept of 1
store_11.z <- zoo(store_11$Weekly_Sales, order.by=store_11$Date) # zoo is one format for time series
plot(store_11.z) # plot the time series

acf(store_11.z)
pacf(store_11.z)

auto.arima(store_11.z) # Automated forecasting using an ARIMA model
fit <- auto.arima(store_11.z)
plot(forecast(fit)) # forecast from ARIMA model