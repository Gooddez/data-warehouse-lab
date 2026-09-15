select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      -- ทุกจังหวัดในข้อมูลขายต้องหาเจอใน mapping ไม่งั้น dim_store จะตกสาขา
select distinct
    s.province
from "lab9"."dbt_staging"."stg_coffee_sales" s
left join "lab9"."dbt_staging"."stg_province_region" p
       on p.province_name = s.province
where p.province_name is null
      
    ) dbt_internal_test