# Set the number of data points
num_points <- 1000

# Generate random x and y coordinates
x <- runif(num_points)
y <- runif(num_points)

# Create a data frame for plotting
df <- data.frame(X = x, Y = y)

# Plot the scatter plot
library(ggplot2)
ggplot(df, aes(x = X, y = Y)) +
  geom_point() +
  labs(x = "X", y = "Y") +
  ggtitle("Scatter Plot of Random Data Points")
