with source as (
 select * from {{ source('base_data','payments') }}
),

transformed as (
  select
    id as payment_id
    ,ORDERID as order_id
    ,STATUS as payment_status
    ,PAYMENTMETHOD as payment_method
    ,AMOUNT as order_amount
    ,CREATED as created_date
  from source
)

select * from transformed