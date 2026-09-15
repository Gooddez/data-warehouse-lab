
  
    

  create  table "lab10"."warehouse"."fct_sales__dbt_tmp"
  
  
    as
  
  (
    select
    md5(s.sale_id::text) as sales_key,
    s.invoice_number,
    d.date_key,
    p.product_key,
    st.store_key,
    c.customer_key,
    pr.promotion_key,
    s.quantity,
    s.unit_price,
    s.revenue,
    s.points_redeemed
from "lab10"."warehouse"."stg_coffee_sales" s
join "lab10"."warehouse"."dim_date" d
    on s.sale_date = d.full_date
join "lab10"."warehouse"."dim_product" p
    on s.product_code = p.product_code
join "lab10"."warehouse"."dim_store" st
    on s.store_code = st.store_code
join "lab10"."warehouse"."dim_customer" c
    on s.customer_code = c.customer_code
left join "lab10"."warehouse"."dim_promotion" pr
    on s.promo_code = pr.promo_code
  );
  