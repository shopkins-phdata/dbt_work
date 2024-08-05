select *
from {{ source('base_data', 'shippers') }}