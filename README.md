# r_codes
A compilation of multiple programs written in r, tried to make it as short as possibe

A compilation of multiple programs written in r, tried to make it as short as possible. 

Below are the questions for each code in their respective order

Q1)  Consider a scenario, you are working as a cashier at a grocery
    store. Your task is to create a program that simulates the checkout
    process for a customer's shopping cart. The program should
    calculate the total cost of the items, including tax, and provide a
    detailed receipt.
    i. Define a list of products, each represented as a dictionary with keys:
    "name", "price", and "quantity".
    ii. Allow the cashier to input the products in the customer's shopping cart,

    including the name, price, and quantity of each item.
    iii. Calculate the subtotal (price * quantity) for each item and display a
    detailed receipt with product names, quantities, prices, and subtotals. iv.
    Calculate the total cost of the items in the cart before tax. v. Apply a tax rate
    (e.g., 8%) to the total cost to calculate the tax amount. vi. Calculate the final
    total cost by adding the tax amount to the total cost before tax.


Q2) Imagine that, you have been tasked with creating a program that
    calculates and assigns grades for students enrolled in multiple
    courses. The program will take input for the marks obtained by 10
    students in 5 different courses, compute the total and average
    marks for each student, and assign corresponding grades based on
    their average performance.
    Declare constants for the number of students (num_students) and
    the number of courses (num_courses).
    Initialize an empty list to store student information.
    For each student:
    • Input the student's name.
    • Input marks for each of the 5 courses.
    • Calculate the total marks and average marks.
    • Determine the grade based on the average marks using a
    grading scale.
    • Display the student information, including their name,
    individual course marks, total marks, average marks, and the
    assigned grade.

Q3)  You are developing a library management system that needs a fine
    calculation feature. Write a R program that takes the number of
    days a book is overdue and calculates the fine amount based on the
    library's policy. The policy states that for the first 7 days, there is
    no fine. After 7 days, a fixed fine per day is charged. Additionally,
    there's a cap on the fine amount after 30 days.
    Input the number of days the book is overdue.
    • Use conditional statements to calculate the fine amount based
    on the library's policy.
    • Display the fine amount along with a message indicating
    whether the fine is within the cap or exceeded it.

Q4) You are developing an inventory management system for a small
    store. The system needs to handle inventory items and their
    quantities. Write a program that uses arrays to store inventory
    items and their quantities, and includes functions to add new
    items, update quantities, and display the inventory.

    • Define an array to store inventory items.
    • Define an array to store corresponding quantities.
    • Implement functions to:
    o Add a new item along with its quantity.
    o Update the quantity of an existing item.
    o Display the inventory items and quantities.
    o Use the functions to manage the inventory and handle
    user interactions.

Q5) Imagine a scenario, you are working as an educational analyst and need to analyse the
    performance of students in a school. You have data on student names, their scores in different
    subjects, and attendance. Write a program that uses data frames to manage and analyze student
    data, including calculating average scores, identifying students with low attendance, and
    generating a report.
    Create a data frame to store student information with columns: "Name", "Math_Score",
    "Science_Score", "History_Score", "Attendance".
    Implement functions to:
    • Calculate the average scores for each student.
    • Identify students with attendance below a certain threshold.
    • Generate a report with student names, average scores, and attendance status. •
    Use the functions to analyse student performance and generate the report.

Q6) You are a data analyst at a retail company that sells products online.
    The company is interested in predicting sales for the upcoming
    months to better manage inventory and plan marketing strategies.
    As part of your role, you need to develop a program that utilizes
    time series analysis to forecast sales based on a historical sales
    dataset.
    Write an R program to forecast sales for the next three months
    using time series analysis techniques. The program should perform
    the following steps:
    • Load the required libraries, including the forecast package. •
    Create a data frame with two columns: Month and Sales. The
    Month column should contain a sequence of dates from January
    2023 to June 2023 (inclusive), and the Sales column should
    contain the corresponding sales amounts (12000, 15000, 18000,
    16000, 20000, 22000).
    • Convert the sales data into a time series object with a monthly
    frequency.
    • Fit an ARIMA (AutoRegressive Integrated Moving Average)
    model to the sales time series using the auto.arima() function. •
    Forecast sales for the next three months using the fitted ARIMA
    model and the forecast() function.
    • Display the forecasted sales results, including point forecasts
