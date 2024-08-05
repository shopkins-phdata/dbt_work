with
 orders as (
    select * from {{ ref('stg_orders') }}
 )
 ,

 order_details as (
    select * exclude (orderid) from {{ ref('stg_order_details') }}
 )
 ,

 final as (
    select
     orders.*
     ,order_details.productid
     ,order_details.quantity
     ,order_details.unitprice
     ,order_details.discount
    from orders left join order_details on orders.orderid = order_details.orderid
 )

 select * from final