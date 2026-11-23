# Creating text data
student_data <- c(
  "101,Anita,Statistics",
  "102,Bhavana,Mathematics",
  "103,Chirag,Computer Science"
)

# Split strings using comma
split_data <- strsplit(student_data, ",")
print(split_data)

# Extract student IDs
student_id <- sapply(split_data, `[`, 1)
print(student_id)

# Extract student names
student_name <- sapply(split_data, `[`, 2)
print(student_name)

# Extract departments
department <- sapply(split_data, `[`, 3)
print(department)

# Convert names to uppercase
print(toupper(student_name))

# Convert departments to lowercase
print(tolower(department))

# Remove leading and trailing spaces
text <- c(" Anita ", " Bhavana ", " Chirag ")
print(trimws(text))