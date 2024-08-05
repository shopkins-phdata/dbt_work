 {{
    config(
        materialized = "table"
    )
}}

select 
 md5(supplierid) as dim_supplier_key
 , SUPPLIERID
 , COMPANYNAME
 , CONTACTNAME
 , CONTACTTITLE
 , ADDRESS
 , CITY
 , REGION
 , POSTALCODE
 , COUNTRY
 , PHONE
 , FAX
 , HOMEPAGE
from {{ ref('stg_suppliers') }}