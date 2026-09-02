
select distinct md5(position) as position_key, position
from "lab9"."dbt_staging"."stg_coffee_sales"