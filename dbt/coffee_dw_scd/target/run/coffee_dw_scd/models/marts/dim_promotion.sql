
  
    

  create  table "coffee_dw_scd"."dbt_marts"."dim_promotion__dbt_tmp"
  
  
    as
  
  (
    with first_known as (
    select
        promo_code,
        promo_desc,
        row_number() over (
            partition by promo_code
            order by sale_date, sale_id
        ) as row_num
    from "coffee_dw_scd"."dbt_staging"."stg_coffee_sales"
    where promo_code is not null
)

select
    md5(promo_code) as promo_key,
    promo_code,
    promo_desc
from first_known
where row_num = 1
  );
  