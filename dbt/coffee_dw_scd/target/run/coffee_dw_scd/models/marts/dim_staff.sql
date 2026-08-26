
  
    

  create  table "coffee_dw_scd"."dbt_marts"."dim_staff__dbt_tmp"
  
  
    as
  
  (
    with first_known as (
    select
        staff_code,
        staff_name,
        position,
        row_number() over (
            partition by staff_code
            order by sale_date, sale_id
        ) as row_num
    from "coffee_dw_scd"."dbt_staging"."stg_coffee_sales"
)

select
    md5(staff_code) as staff_key,
    staff_code,
    staff_name,
    position
from first_known
where row_num = 1
  );
  