select 
 md5(customerid) as dim_customer_key
 , CUSTOMERID
 , COMPANYNAME
 , CONTACTNAME
 , CONTACTTITLE
 , CITY
 , REGION
 , POSTALCODE
 , COUNTRY
 , PHONE
 , FAX
from {{ ref('stg_customers') }}