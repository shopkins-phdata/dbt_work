select *
from {{ source('base_data', 'customers') }}