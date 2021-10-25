{{ config(materialized="view") }}

select
    departments.department_name,
    count(1) as employee_count,
    min(employees.salary) as min_salary,
    max(employees.salary) as max_salary,
    sum(employees.salary) as sum_salary
from employees
left join departments
    on employees.department_id = departments.department_id
group by departments.department_name
order by departments.department_name
