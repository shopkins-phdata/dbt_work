select *
from {{ source('base_data', 'employees') }}