library(dplyr)

# Global student data
student_data <- data.frame(
  Name = character(), Math_Score = numeric(), Science_Score = numeric(),
  History_Score = numeric(), Attendance = numeric(), stringsAsFactors = FALSE
)

# Add a student record
add_student <- function(name, math, sci, hist, att) {
  student_data <<- bind_rows(student_data, data.frame(
    Name = name, Math_Score = math, Science_Score = sci,
    History_Score = hist, Attendance = att, stringsAsFactors = FALSE
  ))
  cat("Student information added.\n")
}

# Calculate average scores
calc_avg <- function() {
  student_data %>%
    mutate(Average = (Math_Score + Science_Score + History_Score) / 3) %>%
    select(Name, Average)
}

# Identify low attendance students
low_attendance <- function(threshold) {
  student_data %>% filter(Attendance < threshold) %>% select(Name, Attendance)
}

# Generate performance report
gen_report <- function() {
  report <- merge(calc_avg(), low_attendance(70), by = "Name", all = TRUE)
  report$Attendance[is.na(report$Attendance)] <- 100
  cat("Performance Report:\n")
  print(report)
}

# Main loop
repeat {
  cat("\n1. Add Student\n2. Generate Report\n3. Exit\n")
  choice <- as.integer(readline("Enter your choice: "))
  if (choice == 1) {
    name <- readline("Enter student name: ")
    math <- as.numeric(readline("Enter math score: "))
    sci <- as.numeric(readline("Enter science score: "))
    hist <- as.numeric(readline("Enter history score: "))
    att <- as.numeric(readline("Enter attendance percentage: "))
    add_student(name, math, sci, hist, att)
  } else if (choice == 2) {
    gen_report()
  } else if (choice == 3) {
    cat("Exiting the program. Goodbye!\n")
    break
  } else {
    cat("Invalid choice. Please try again.\n")
  }
}