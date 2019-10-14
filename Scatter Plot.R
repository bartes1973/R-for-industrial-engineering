### SCATTER PLOT ###

# Considerations:

# 1. The code only accepts .csv files with just two columns with numerical data
# 2. The columns should not have a header, the code will assign "x" and "y" as the columns headers
# 3. Review you have installed the SixSgima package. Run the follwing code on the console: install.packages("SixSgima")

#Import the SixSigma package
library(SixSigma)

# Read the csv file and name it as df
df <- data.frame(read.csv(file.choose(),header = FALSE))

# Assign a header to the columns
colnames(df) <- c("x","y")

# Build the scatter plot
plot(y ~ x,             # Do not modify this line of code 
      data = df,        # Do not modify this line of code 
      main = "",        # Type in the plot title
      sub  = "",        # Type in the plot subtitle
      xlab = "",        # Type in the x axis title
      ylab = "",        # Type in the y axis title
      xlim = c(,),      # Set the x axis limits
      ylim = c(,),      # Set the y axis limits
      col  = "black",   # Type in the plot color
      pch  = 16,        # Set the points shape
      asp  = 0)         # Asp refers to the same scale applied in both axis (0 for no or 1 for yes)
grid()                  # Add grid to the chart

# EXAMPLE

library(SixSigma)

plot(pc.volume ~ pc.density,    
     data = ss.data.pc,         
     main = "Scatter Plot",            
     sub  = "Subtitle",         
     xlab = "Volume of Ink",    
     ylab = "Density",          
     xlim = c(0,2),             
     ylim = c(13,19),           
     col  = "#666666",          
     pch  = 16,                 
     asp  = 0)
grid()      
