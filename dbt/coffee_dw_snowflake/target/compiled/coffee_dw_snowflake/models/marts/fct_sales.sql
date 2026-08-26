select
    s.sale_id,
    s.invoice_number,
    d.date_key,
    c.customer_key,
    p.product_key,
    st.store_key,
    sf.staff_key,
    pr.promo_key,
    s.quantity,
    s.revenue,
    s.points_redeemed
from "coffee_dw_snowflake"."dbt_staging"."stg_coffee_sales" s
join "coffee_dw_snowflake"."dbt_marts"."dim_date" d
  on s.sale_date = d.sale_date
join "coffee_dw_snowflake"."dbt_marts"."dim_customer" c
  on s.customer_code = c.customer_code
join "coffee_dw_snowflake"."dbt_marts"."dim_product" p
  on s.product_code = p.product_code
join "coffee_dw_snowflake"."dbt_marts"."dim_store" st
  on s.store_code = st.store_code
join "coffee_dw_snowflake"."dbt_marts"."dim_staff" sf
  on s.staff_code = sf.staff_code
left join "coffee_dw_snowflake"."dbt_marts"."dim_promotion" pr
  on s.promo_code = pr.promo_code