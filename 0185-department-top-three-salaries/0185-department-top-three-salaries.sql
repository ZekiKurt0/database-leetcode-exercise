select Department,
Employee,
Salary from(select d.name as Department,e.name as Employee ,e.salary as Salary,dense_rank() over(PARTITION BY d.name order by salary desc) as rank_salary
from Employee  as e join Department as d on e.departmentId=d.id
)as taable where rank_salry<=3 