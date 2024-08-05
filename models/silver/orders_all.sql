with
 orders as (
    select * from {{ ref('stg_orders') }}
 )
 ,

 order_details as (
    select * from {{ ref('stg_order_details') }}
 )