select
    x.sale_key,
    x.source_sale_id,
    x.invoice_number,
    d.date_key,
    c.customer_key,
    p.product_key,
    st.store_key,
    sf.staff_key,
    pr.promo_key,
    x.quantity,
    x.revenue,
    x.points_redeemed
from "lab8"."dbt_intermediate"."int_sales_expanded" x
join "lab8"."dbt_marts"."dim_date" d
  on x.sale_date = d.sale_date
join "lab8"."dbt_marts"."dim_customer" c
  on x.customer_code = c.customer_code
join "lab8"."dbt_marts"."dim_product" p
  on x.product_code = p.product_code
 and x.size = p.size
join "lab8"."dbt_marts"."dim_store" st
  on x.store_code = st.store_code
join "lab8"."dbt_marts"."dim_staff" sf
  on x.staff_code = sf.staff_code
left join "lab8"."dbt_marts"."dim_promotion" pr
  on x.promo_code = pr.promo_code