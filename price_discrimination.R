library(ggplot2)

# Create data for price discrimination
quantity <- seq(0, 100, by = 10)
price_segment1 <- 20 - 0.2 * quantity  # Price for segment 1
price_segment2 <- 10 - 0.1 * quantity  # Price for segment 2

# Combine data into a dataframe
df <- data.frame(quantity, price_segment1, price_segment2)

# Plotting price discrimination
ggplot(df, aes(x = quantity)) +
  geom_line(aes(y = price_segment1, color = "Segment 1"), size = 1) +
  geom_line(aes(y = price_segment2, color = "Segment 2"), size = 1) +
  labs(title = "Price Discrimination",
       x = "Quantity",
       y = "Price",
       color = "Customer Segment") +
  scale_color_manual(values = c("Segment 1" = "blue", "Segment 2" = "red")) +
  theme_minimal()
