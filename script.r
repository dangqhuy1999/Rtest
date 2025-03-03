
library(renv)
# Load renv
renv::activate()

library(ggplot2)
library(readr)


# block comment!
if(FALSE) {
	args <- commandArgs(trailingOnly = TRUE)

	if (length(args) == 0) {
	  name <- "Guest"   # Default name if no argument is given
	} else {
	  name <- args[1]
	}

	cat("Hello,", name, "\n")

	# data analyst
	data <- data.frame(x = rnorm(100), y = rnorm(100))

	#open png
	png("plot.png")

	ggplot(data, aes(x = x, y = y)) + geom_point()
	#ggplot(data, aes(x = x, y = y)) + geom_point() + ggtitle("Random Scatter Plot")
	#ggplot(data, aes(x = x, y = y)) + 
	  geom_point() + 
	  theme_minimal()

	#offPNG
	dev.off()

	#output print
	print("Plot saved as plot.png")
}

#data <- read.csv("D:/IT-Only/python/P16_mozart/HousingPrice/train.csv")  # Reads CSV as a data frame


data <- read_csv("data.csv")  # Reads CSV as a tibble (like pandas)  Faster than above code



print("block comment!")

