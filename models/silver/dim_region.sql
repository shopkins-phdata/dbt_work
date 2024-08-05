 {{
    config(
        materialized = "table"
    )
}}

select 
 md5(REGIONID) as dim_region_key
 , REGIONID
 , REGIONDESCRIPTION
from {{ ref('stg_regions') }}