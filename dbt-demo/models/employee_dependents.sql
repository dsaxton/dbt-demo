{{ config(materialized="view") }}

select
    employees.*,
    dependents.first_name as dependents_first_name,
    dependents.last_name as dependents_last_name,
    dependents.relationship as dependents_relationship
from employees
left join dependents
    on employees.employee_id = dependents.employee_id
