select *
from {{ source('base_data', 'categories') }}