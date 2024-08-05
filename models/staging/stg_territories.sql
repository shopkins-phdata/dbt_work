select *
from {{ source('base_data', 'territories') }}