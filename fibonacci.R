# Install and load the 'animation' package
if (!require(animation)) {
  install.packages("animation")
}
library(animation)

# Function to calculate Fibonacci sequence
fibonacci <- function(n) {
  sequence <- c(0, 1)
  
  if (n <= 2) {
    return(sequence[1:n])
  }
  
  for (i in 3:n) {
    next_num <- sequence[i - 1] + sequence[i - 2]
    sequence <- c(sequence, next_num)
  }
  
  return(sequence)
}

# Define the number of Fibonacci numbers to calculate
num_fibonacci <- 20

# Create a function to generate animated plot frames
generate_frames <- function() {
  for (i in 1:num_fibonacci) {
    fib_sequence <- fibonacci(i)
    
    plot(fib_sequence, type = "o", xlab = "Index", ylab = "Fibonacci Number", main = "Fibonacci Sequence")
    
    # Pause for a short duration between frames
    Sys.sleep(0.5)
    
    # Capture the current plot as a frame
    ani.pause()
  }
}

# Create the animation
ani.options(interval = 0.5)
saveGIF({
  generate_frames()
}, movie.name = "fibonacci_animation.gif", ani.width = 500, ani.height = 400, ani.type = "gif")
