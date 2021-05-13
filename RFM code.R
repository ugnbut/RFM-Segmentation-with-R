library(rfm)
library(tidyverse)

data <- read.csv2("scanner_data.csv", stringsAsFactors=FALSE, sep = "," )
str(data)
colnames(data)[1] <- "Transaction_NR"
colnames(data)[2] <- "Transaction_DT"
data$Sales_Amount <- as.integer(data$Sales_Amount)
data$TRANSACTION_DT <- as.Date(data$Transaction_DT, format = '%Y-%m-%d')
str(data)

fit <- rfm_table_order(data, Customer_ID, Transaction_DT, Sales_Amount, as.Date('2018-01-01')) #the most recent date on the dataset
fit

rfm_heatmap(fit)
rfm_bar_chart(fit)
rfm_histograms(fit)
rfm_order_dist(fit)
rfm_rm_plot(fit)
rfm_fm_plot(fit)
rfm_rf_plot(fit)

segment_names <- c("Champions", "Loyal Customers", "Potential Loyalist",
                   "New Customers", "Promising", "Need Attention", "About To Sleep",
                   "At Risk", "Can't Lose Them", "Lost")
recency_lower <- c(4, 2, 3, 4, 3, 2, 2, 1, 1, 1)
recency_upper <- c(5, 5, 5, 5, 4, 3, 3, 2, 1, 2)
frequency_lower <- c(4, 3, 1, 1, 1, 2, 1, 2, 4, 1)
frequency_upper <- c(5, 5, 3, 1, 1, 3, 2, 5, 5, 2)
monetary_lower <- c(4, 3, 1, 1, 1, 2, 1, 2, 4, 1)
monetary_upper <- c(5, 5, 3, 1, 1, 3, 2, 5, 5, 2)
seg <- rfm_segment(fit, segment_names, recency_lower, recency_upper, frequency_lower, frequency_upper, monetary_lower, monetary_upper)
seg

rfm_plot_median_recency(seg)
rfm_plot_median_frequency(seg)
rfm_plot_median_monetary(seg)