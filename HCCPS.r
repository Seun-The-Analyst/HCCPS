# Load necessary library
set.seed(123)  # For reproducibility

# List of sample first and last names of workers of High Bridge Construction Company
first_names <- c("John", "Jane", "Alex", "Emily", "Chris", "Katie", "Michael", "Sarah", "David", "Laura", "Peter", "Linda", "James", "Jessica", "Robert", "Mary", "William", "Patricia", "Daniel", "Elizabeth")
last_names <- c("Smith", "Johnson", "Williams", "Brown", "Jones", "Garcia", "Miller", "Davis", "Martinez", "Hernandez", "Lopez", "Gonzalez", "Wilson", "Anderson", "Thomas", "Taylor", "Moore", "Jackson", "Martin", "Lee")

# Generate a list of 500 workers with random names
workers <- paste(sample(first_names, 500, replace = TRUE), sample(last_names, 500, replace = TRUE))

# Generate and print payslips for each worker
for (worker in workers) {
  salary <- sample(7500:30000, 1)  # Random salary between 7,500 and 30,000
  
  # Determine employee level based on salary and gender
  first_name <- strsplit(worker, " ")[[1]][1]
  if (salary > 10000 && salary < 20000) {
    employee_level <- "A1"
  } else if (salary > 7500 && salary < 30000 && first_name %in% c("Jane", "Emily", "Katie", "Sarah", "Laura", "Linda", "Jessica", "Mary", "Elizabeth")) {
    employee_level <- "A5-F"
  } else {
    employee_level <- "Unknown"
  }
  
  cat(sprintf("Payslip for %s: Salary = $%d, Employee Level = %s\n", worker, salary, employee_level))
}
