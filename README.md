Missing Values Utility Functions
This repository provides a set of R utility functions to handle missing values in datasets. These functions allow you to detect, summarize, and replace missing values, making your data preprocessing easier and more efficient.

Functions
1. detect_missing_values
Description
Detects and counts the number of missing values in each column of a dataset.

Parameters
data: A data frame or matrix.
Returns
A named vector containing the count of missing values for each column that has missing data.

Example
sample_data <- data.frame(
  A = c(1, 2, NA, 4, 5),
  B = c(NA, 2, 3, 4, 5),
  C = c(1, 2, 3, 4, 5)
)
detect_missing_values(sample_data)
2. calculate_median
Description
Calculates the median for each numeric column in a dataset. Non-numeric columns are skipped.

Parameters
data: A data frame.
Returns
A named vector containing medians of numeric columns.

Example
sample_data <- data.frame(
  A = c(1, 2, NA, 4, 5),
  B = c(NA, 2, 3, 4, 5),
  C = c("a", "b", "c", "d", "e")
)
calculate_median(sample_data)
3. replace_with_median
Description
Replaces missing values in numeric columns with the column median. Non-numeric columns are skipped.

Parameters
data: A data frame.
Returns
A data frame with missing values replaced by medians.

Example
sample_data <- data.frame(
  A = c(1, 2, NA, 4, 5),
  B = c(NA, 2, 3, 4, 5),
  C = c("a", "b", "c", "d", "e")
)
replace_with_median(sample_data)
