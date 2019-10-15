### HISTOGRAM ###

# Considerations:

# 1. The code only accepts .csv files with just one column with numerical data corresponding to measures
# 2. The column should not have a header, the code will assign "Measure" as the column header
# 3. Review you have installed the SixSgima package. Run the follwing code on the console: install.packages("SixSigma")

# Import the SixSigma package
library(SixSigma)

# Read the csv file and name it as df
df <- data.frame(read.csv(file.choose(),header = FALSE))

# Assign a header to the column
colnames(df) <- "Measure"

# Build the histogram
hist(df$Measure,           # Do not modify this line of code 
     breaks = ,            # Breaks refers to the number of bins, (type "FD" for a fixed number)
     main   = "",          # Type in the histogram title
     sub    = "",          # Type in the histogram subtitle
     xlab   = "",          # Type in the x axis title
     col    = "#DDDDDD",   # Type in the bins color
     border = "")          # Type in the bins border color
grid()                     # Add grid to the chart
box()                      # Place everything within a box

# EXAMPLE

library(SixSigma)

hist(ss.data.pc$pc.volume,
     breaks = "FD",
     main = "Printer Cartridge Volume",
     sub = "Subtitle",
     xlab = "Volume",
     col = "#DDDDDD",
     border = "black")
grid()
box()     
