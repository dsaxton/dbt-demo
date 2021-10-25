select *
from {{ ref("salary_by_department") }}
where not (min_salary <= max_salary and max_salary <= sum_salary)
