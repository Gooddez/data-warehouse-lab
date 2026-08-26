select s.*
from "coffee_dw_snowflake"."dbt_staging"."stg_coffee_sales" s
left join "coffee_dw_snowflake"."dbt_marts"."dim_province" p
  on s.province = p.province_name
where p.province_key is null