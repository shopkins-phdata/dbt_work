select *
from {{ source('base_data', 'products') }}