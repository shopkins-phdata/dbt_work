with source as (
 select * from {{ source('base_data','customers') }}
),

transformed as (
  select
    id as customer_id
    ,first_name
    ,last_name
    ,first_name || last_name as full_name
  from source
)

select * from transformed