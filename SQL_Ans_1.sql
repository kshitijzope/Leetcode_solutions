# Write your MySQL query statement below
select dept.Name as Department,emp1.Name as Employee,emp1.Salary as Salary from
Employee emp1 inner join Department dept
    on emp1.DepartmentId = dept.Id
where 3 > ( select count(distinct(emp2.Salary)) from 
                        Employee emp2  
                         where emp2.Salary>emp1.Salary and emp1.DepartmentId =emp2.DepartmentId);
