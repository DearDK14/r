# Install and load package
if(!require(e1071)) install.packages("e1071")
library(e1071)

# Create sample dataset
data <- data.frame(
  Score = c(75, 85, 88, 90, 65, 70, 85, 95, 85, 100, 60, 78),
  Gender = factor(rep(c("Male", "Female"), 6)),
  Grade = factor(rep(c("A", "B", "A", "C"), 3))
)

# 1. Measures of Central Tendency
mean_val <- mean(data$Score)
median_val <- median(data$Score)

# Mode function
get_mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

mode_val <- get_mode(data$Score)

cat("Mean:", mean_val, "\n")
cat("Median:", median_val, "\n")
cat("Mode:", mode_val, "\n")

# 2. Measures of Dispersion
range_val <- range(data$Score)
var_val <- var(data$Score)
sd_val <- sd(data$Score)
iqr_val <- IQR(data$Score)

cat("Range:", range_val, "\n")
cat("Variance:", var_val, "\n")
cat("Standard Deviation:", sd_val, "\n")
cat("IQR:", iqr_val, "\n")

# 3. Skewness and Kurtosis
skew_val <- skewness(data$Score)
kurt_val <- kurtosis(data$Score)

cat("Skewness:", skew_val, "\n")
cat("Kurtosis:", kurt_val, "\n")

# 4. Multi-way Contingency Table
contingency_table <- table(data$Gender, data$Grade)
print(contingency_table)

# Formatted table
print(ftable(contingency_table))