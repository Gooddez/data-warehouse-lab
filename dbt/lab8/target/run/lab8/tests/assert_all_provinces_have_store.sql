select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select p.*
from "lab8"."dbt_marts"."dim_province" p
left join "lab8"."dbt_marts"."dim_store" s
  on p.province_key = s.province_key
where s.store_key is null
      
    ) dbt_internal_test