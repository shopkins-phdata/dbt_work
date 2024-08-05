select *
from {{ source('base_data', 'orders_details') }}