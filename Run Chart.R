### RUN CHART ###

# Considerations:

# 1. The code only accepts .csv files with just one column with numerical data corresponding to measures
# 2. The column should not have a header, the code will assign "Measure" as the column header
# 3. Review you have installed the SixSgima package. Run the follwing code on the console: install.packages("SixSigma")

# Import the SixSigma package
library(SixSigma)

# Read the csv file and name it as df
df <- data.frame(read.csv(file.choose(),header = FALSE))

colnames(df) <- "Measure"

# Build the run chart
plot(df$Measure,          # Do not modify this line of code 
     type = "b",          # Type refers to chart layout ("b" or "c")
     pch  = ,             # Pch refers to the symbol shape on the plot 
     ylim = c(,),         # Ylim refers to the y axis limts 
     axes = FALSE,        # Axis determine is default axes are set to the chart
     main = "",           # Type in the plot title
     sub  = "",           # Type in the plot subtitle
     xlab = "",           # Type in the x axis title
     ylab = "")           # Type in the y axis title
axis(1,                   # Axis 1 refers to the x axis
     at = :,              # Set the x axis limits
     cex.axis = 0.7)      # Set the x axis font size
axis(2)                   # Axis 2 refers to the y axis
box()                     # Place everything within a box
grid()                    # Add grid to the chart
abline(h = ,              # Set the measure target (horizontal straight bar)
       lwd = 2)           # Set the mean line width

# EXAMPLE

library(SixSigma)

plot(df$Measures,
     type = "b",
     pch = 16,
     ylim = c(0,30),
     axes = FALSE,
     main = "Run Chart for the Volume",
     sub = "Printer Cartridge Example",
     xlab = "Run",
     ylab = "Volume")
axis(1,
     at = 1:100,
     cex.axis = 0.7)
axis(2)
box()
grid()
abline(h = 16,
       lwd = 2)
