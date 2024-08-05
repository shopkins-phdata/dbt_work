select 
 md5(customerid)
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