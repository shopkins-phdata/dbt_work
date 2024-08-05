{{
    config(
        materialized = "table"
    )
}}

with prod as (
  select * from {{ ref('stg_products') }} 
)
,
cat as (
  select * from {{ ref('stg_categories') }} 
)
,
sup as (
    {{ ref('dim_supplier') }} 
)

select 
 md5(productid) as dim_product_key
 , PRODUCTID
 , PRODUCTNAME
 , SUPPLIERID
 , cat.categoryname
 , QUANTITYPERUNIT
 , UNITPRICE
 , UNITSINSTOCK
 , UNITSONORDER
 , REORDERLEVEL
 ,  case DISCONTINUED
     when 1 then true
     else false
    end as is_discontinued
from prod
 left join cat on prod.categoryid = cat.categoryid
 left join sup on prod.SUPPLIERID=sup.SUPPLIERID