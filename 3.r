calculate_fine <- function(days) {
  if (days <= 7) {
    0
  } else if (days <= 30) {
    (days - 7) * 2
  } else {
    50
  }
}

# Input the number of days overdue
days_overdue <- as.integer(readline("Enter the number of days the book is overdue: "))

# Calculate and display fine details
fine_amount <- calculate_fine(days_overdue)
cat("Fine Amount:", fine_amount, "\n")

if (fine_amount == 0) {
  cat("No fine. Thank you for returning the book on time!\n")
} else if (days_overdue > 30) {
  cat("Fine exceeds the maximum cap. Please contact the library.\n")
} else {
  cat("Please pay the fine within the specified period.\n")
}