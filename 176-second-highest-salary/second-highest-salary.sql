# Write your MySQL query statement below
# Write your MySQL query statement below
Select MAX(salary) as secondHighestSalary from Employee
WHERE salary < (Select MAX(salary)from Employee);