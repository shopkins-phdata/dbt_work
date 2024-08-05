select *
from {{ source('base_data', 'suppliers') }}