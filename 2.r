num_students <- 10
num_courses <- 5
student_names <- c("John", "Anna", "Tim", "Harry", "Pal", "Jim", "Peter", "Bob", "Cook", "James")

course_marks <- matrix(c(
  85, 92, 78, 88, 95,
  88, 89, 78, 77, 81,
  75, 80, 85, 70, 60,
  90, 67, 70, 89, 87,
  100, 78, 56, 34, 56,
  45, 78, 97, 66, 89,
  78, 45, 67, 89, 90,
  56, 89, 67, 99, 98,
  89, 80, 67, 78, 90,
  67, 78, 90, 78, 78
), nrow = num_students, byrow = TRUE)

# Build student records using lapply
student_records <- lapply(1:num_students, function(i) {
  total <- sum(course_marks[i, ])
  avg <- total / num_courses
  grade <- ifelse(avg >= 90, "A",
           ifelse(avg >= 80, "B",
           ifelse(avg >= 70, "C",
           ifelse(avg >= 60, "D", "F"))))
  list(name = student_names[i], marks = course_marks[i, ], total = total, average = avg, grade = grade)
})

# Display student information
cat("\nStudent Grade Report:\n")
for (record in student_records) {
  cat(sprintf("\nName: %s\nMarks: %s\nTotal Marks: %d\nAverage Marks: %.2f\nGrade: %s\n",
              record$name, paste(record$marks, collapse = " "), record$total, record$average, record$grade))
}