
  
    

  create  table "coffee_dw"."dbt"."fct_sales__dbt_tmp"
  
  
    as
  
  (
    select
    s.sale_id,
    s.invoice_number,
    d.date_key,
    c.customer_key,
    p.product_key,
    st.store_key,
    sf.staff_key,
    pr.promotion_key,
    s.unit_price,
    s.quantity,
    s.revenue,
    (s.unit_price * s.quantity) - s.revenue as discount_amount,
    s.points_redeemed
from "coffee_dw"."dbt"."stg_coffee_sales" s
join "coffee_dw"."dbt"."dim_date" d
  on s.sale_date = d.full_date
join "coffee_dw"."dbt"."dim_customer" c
  on s.customer_code = c.customer_code
join "coffee_dw"."dbt"."dim_product" p
  on s.product_code = p.product_code
join "coffee_dw"."dbt"."dim_store" st
  on s.store_code = st.store_code
join "coffee_dw"."dbt"."dim_staff" sf
  on s.staff_code = sf.staff_code
join "coffee_dw"."dbt"."dim_promotion" pr
  on s.promo_code = pr.promo_code
  );
  