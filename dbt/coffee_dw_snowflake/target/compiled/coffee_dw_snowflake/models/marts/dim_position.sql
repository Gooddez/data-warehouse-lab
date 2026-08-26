select distinct
    md5(position) as position_key,
    position as position_name
from "coffee_dw_snowflake"."dbt_staging"."stg_coffee_sales"