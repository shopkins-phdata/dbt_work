with source as (
 select * from from {{ source('base_data','orders') }}
),

transformed as (
  select
    id as order_id
    ,user_id as customer_id
    ,ORDER_DATE 
    ,STATUS as order_status
  from source
)

select * from transformed