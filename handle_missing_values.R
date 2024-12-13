# Write the function in the R file
cat(
  paste0(
    "#' Handle Missing Values in a Dataset\n",
    "#'\n",
    "#' This function detects missing values, calculates the median for each variable, ",
    "and replaces the missing values with their respective medians.\n",
    "#' @param dataset A data frame with potential missing values.\n",
    "#' @return A data frame with missing values replaced by medians.\n",
    "#' @examples\n",
    "#' data <- data.frame(a = c(1, NA, 3), b = c(4, 5, NA))\n",
    "#' handle_missing_values(data)\n",
    "handle_missing_values <- function(dataset) {\n",
    "  if (!is.data.frame(dataset)) stop('Input must be a data frame')\n",
    "  missing_cols <- sapply(dataset, function(x) any(is.na(x)))\n",
    "  for (col in names(dataset)[missing_cols]) {\n",
    "    median_value <- median(dataset[[col]], na.rm = TRUE)\n",
    "    dataset[[col]][is.na(dataset[[col]])] <- median_value\n",
    "  }\n",
    "  return(dataset)\n",
    "}\n"
  ),
  file = "R/handle_missing_values.R"
)


# Step 3: Document the Package
# Document the function using roxygen2
roxygen2::roxygenise()

# Step 4: Install and Test the Package
devtools::install()

# Test the Function
# Create a sample dataset
data <- data.frame(a = c(1, NA, 3), b = c(4, 5, NA))
result <- ReplaceMissingValues::handle_missing_values(data)
print(result)

# Step 5: Add Metadata
usethis::use_description(fields = list(
  Title = "Replace Missing Values",
  Description = "A simple package to handle missing values in a dataset by replacing them with median values.",
  License = "MIT",
  Version = "0.1.0"
))

