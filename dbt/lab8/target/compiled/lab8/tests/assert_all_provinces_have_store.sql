select p.*
from "lab8"."dbt_marts"."dim_province" p
left join "lab8"."dbt_marts"."dim_store" s
  on p.province_key = s.province_key
where s.store_key is null