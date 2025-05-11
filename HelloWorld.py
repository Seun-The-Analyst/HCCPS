import random

# List of sample first and last names of workers of High Bridge Construction Company
first_names = ["John", "Jane", "Alex", "Emily", "Chris", "Katie", "Michael", "Sarah", "David", "Laura", "Peter", "Linda", "James", "Jessica", "Robert", "Mary", "William", "Patricia", "Daniel", "Elizabeth"]
last_names = ["Smith", "Johnson", "Williams", "Brown", "Jones", "Garcia", "Miller", "Davis", "Martinez", "Hernandez", "Lopez", "Gonzalez", "Wilson", "Anderson", "Thomas", "Taylor", "Moore", "Jackson", "Martin", "Lee"]

# Generate a list of 500 workers with random names
workers = [f"{random.choice(first_names)} {random.choice(last_names)}" for _ in range(500)]

# Generate and print payslips for each worker
for worker in workers:
    salary = random.randint(7500, 30000)  # Random salary between 7,500 and 30,000
    # Determine employee level based on salary and gender
    if 10000 < salary < 20000:
        employee_level = "A1"
    elif 7500 < salary < 30000 and worker.split()[0] in ["Jane", "Emily", "Katie", "Sarah", "Laura", "Linda", "Jessica", "Mary", "Elizabeth"]:
        employee_level = "A5-F"
    else:
        employee_level = "Unknown"
    
    print(f"Payslip for {worker}: Salary = ${salary}, Employee Level = {employee_level}")