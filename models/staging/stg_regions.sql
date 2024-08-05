select *
from {{ source('base_data', 'regions') }}