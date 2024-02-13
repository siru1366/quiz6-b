# Step 1: Create the Package Structure
devtools::create("simulatedData")

# Step 2: Define the Simulated Dataset Function
#' Generate Simulated Dataset
#'
#' Generate a simulated dataset with specified number of observations and variables.
#'
#' @param n Number of observations.
#' @param p Number of variables.
#' @return A simulated dataset as a data frame.
#' @export
#' @examples
#' simulatedData(n = 100, p = 5)
simulatedData <- function(n, p) {
  data <- matrix(rnorm(n * p), nrow = n, ncol = p)
  colnames(data) <- paste0("Var", 1:p)
  return(data)
}

# Step 3: Document the Function
devtools::document("simulatedData")

# Step 4: Check the Package
devtools::check("simulatedData")

# Step 5: Initialize Git and Push to GitHub
# Navigate to the package directory
setwd("simulatedData")

11
