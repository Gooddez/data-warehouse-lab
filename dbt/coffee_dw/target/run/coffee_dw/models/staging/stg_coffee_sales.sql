
  create view "coffee_dw"."dbt"."stg_coffee_sales__dbt_tmp"
    
    
  as (
    select
    sale_id::integer                                  as sale_id,
    nullif(trim(invoice_number), '')                  as invoice_number,
    sale_date::date                                   as sale_date,
    nullif(trim(customer_code), '')                   as customer_code,
    nullif(trim(customer_name), '')                   as customer_name,
    upper(nullif(trim(gender), ''))                   as gender,
    birth_year::integer                               as birth_year,
    nullif(trim(product_code), '')                    as product_code,
    nullif(trim(product_name), '')                    as product_name,
    nullif(trim(category), '')                        as category,
    nullif(trim(size), '')                            as size,
    unit_price::numeric                               as unit_price,
    quantity::integer                                 as quantity,
    revenue::numeric                                  as revenue,
    nullif(trim(store_code), '')                      as store_code,
    nullif(trim(store_name), '')                      as store_name,
    nullif(trim(province), '')                        as province,
    nullif(trim(staff_code), '')                      as staff_code,
    nullif(trim(staff_name), '')                      as staff_name,
    nullif(trim(position), '')                        as position,
    coalesce(nullif(trim(promo_code), ''), 'NO_PROMO') as promo_code,
    coalesce(nullif(trim(promo_desc), ''), 'ไม่ใช้โปรโมชัน') as promo_desc,
    coalesce(points_redeemed, 0)::integer             as points_redeemed
from "coffee_dw"."public"."coffee_staging"
  );