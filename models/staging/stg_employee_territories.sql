select *
from {{ source('base_data', 'employee_territories') }}