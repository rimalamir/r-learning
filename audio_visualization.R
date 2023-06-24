# Install required packages if not already installed
install.packages(c("seewave", "ggplot2", "tuneR"), repos = "https://cloud.r-project.org")


# Load the packages
library(tuneR)
library(seewave)
library(ggplot2)

# Read the MP3 file
mp3_file <- "audio_file.mp3"
audio <- readMP3(mp3_file)

# Convert to WAV format
wav_file <- "audio_file.wav"
writeWave(audio, wav_file)

# Read the WAV file
sound <- readWave(wav_file)

# Extract the sound signal
signal <- sound@left

# Create a time vector
time <- 1:length(signal) / sound@samp.rate

# Create a data frame for plotting
data <- data.frame(time = time, signal = signal)

# Create the plot using ggplot2
ggplot(data, aes(x = time, y = signal)) +
  geom_line() +
  xlab("Time (seconds)") +
  ylab("Amplitude") +
  ggtitle("Sound Signal Visualization")
