library(forecast)

# Create time series data for sales
sales_data <- data.frame(
  Month = seq(as.Date("2023-01-01"), as.Date("2023-06-01"), by = "month"),
  Sales = c(12000, 15000, 18000, 16000, 20000, 22000)
)
sales_ts <- ts(sales_data$Sales, frequency = 12, start = c(2023, 1))
print(sales_ts)

# Fit ARIMA model and forecast next 3 months
arima_model <- auto.arima(sales_ts)
forecast_result <- forecast(arima_model, h = 3)

# Display forecast results
print(forecast_result)
plot(forecast_result)