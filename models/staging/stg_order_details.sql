select *
from {{ source('base_data', 'order_details') }}