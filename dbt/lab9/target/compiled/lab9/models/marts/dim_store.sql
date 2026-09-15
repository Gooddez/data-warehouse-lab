
select distinct
  md5(s.store_code) as store_key,
  s.store_code, s.store_name, p.province_key
from "lab9"."dbt_staging"."stg_coffee_sales" s
join "lab9"."dbt_marts"."dim_province" p on p.province_name=s.province