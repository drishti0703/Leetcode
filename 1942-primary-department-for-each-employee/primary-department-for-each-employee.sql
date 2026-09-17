Select employee_id, department_id 
from Employee
WHERE primary_flag='Y'
or employee_id IN (Select employee_id from Employee
GROUP BY employee_id HAVING Count(*)=1)