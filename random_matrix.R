library(ggplot2)

# Generate a random matrix
matrix_size <- 100
random_matrix <- matrix(rnorm(matrix_size^2), nrow = matrix_size)

# Calculate the mean of each row
row_means <- apply(random_matrix, 1, mean)

# Create a data frame for plotting
df <- data.frame(
  Row = rep(1:matrix_size, each = matrix_size),
  Column = rep(1:matrix_size, times = matrix_size),
  Value = as.vector(random_matrix)
)

# Plot the random matrix and row means
ggplot() +
  geom_tile(data = df, aes(x = Column, y = Row, fill = Value)) +
  geom_point(data = data.frame(Row = 1:matrix_size, Mean = row_means), aes(x = 0, y = Row, color = Mean), size = 3) +
  scale_fill_gradient(low = "white", high = "blue") +
  scale_color_gradient(low = "red", high = "red") +
  labs(x = "Column", y = "Row", color = "Mean") +
  ggtitle("Random Matrix and Row Means")
