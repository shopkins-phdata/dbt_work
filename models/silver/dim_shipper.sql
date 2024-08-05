 {{
    config(
        materialized = "table"
    )
}}

select 
 md5(SHIPPERID) as dim_shipper_key
 , SHIPPERID
 , COMPANYNAME
 , PHONE
from {{ ref('stg_shippers') }}