{{
    config(
        materialized = "table"
    )
}}

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
from {{ ref('stg_products') }} prod
 left join {{ ref('stg_categories') }} cat on prod.categoryid = cat.categoryid