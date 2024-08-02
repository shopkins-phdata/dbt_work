with source as (
 select * from {{ source('base_data','payments') }}
),

transformed as (
  select
    id as payment_id
    ,ORDERID as order_id
    ,STATUS as payment_status
    ,PAYMENTMETHOD as payment_method
    ,round(amount /100,2) as payment_amount
    ,CREATED as payment_created_at
  from source
)

select * from transformed