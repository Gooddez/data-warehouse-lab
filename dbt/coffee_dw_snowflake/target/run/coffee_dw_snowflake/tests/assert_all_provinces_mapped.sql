select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select s.*
from "coffee_dw_snowflake"."dbt_staging"."stg_coffee_sales" s
left join "coffee_dw_snowflake"."dbt_marts"."dim_province" p
  on s.province = p.province_name
where p.province_key is null
      
    ) dbt_internal_test