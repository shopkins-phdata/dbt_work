select
 id as order_id
 ,user_id as customer_id
 ,ORDER_DATE 
 ,STATUS as order_status
from {{ source('base_data','orders')}}