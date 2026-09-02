
select
  s.sale_id, s.invoice_number, d.date_key, c.customer_key,
  p.product_key, st.store_key, sf.staff_key, pr.promo_key,
  s.quantity, s.revenue, s.points_redeemed
from "lab9"."dbt_intermediate"."int_sales_batch" s
join "lab9"."dbt_marts"."dim_date" d on d.sale_date=s.sale_date
join "lab9"."dbt_marts"."dim_customer" c
  on c.customer_code=s.customer_code
 and s.sale_date between c.start_date and c.end_date
join "lab9"."dbt_marts"."dim_product" p on p.product_code=s.product_code and p.size=s.size
join "lab9"."dbt_marts"."dim_store" st on st.store_code=s.store_code
join "lab9"."dbt_marts"."dim_staff" sf on sf.staff_code=s.staff_code
left join "lab9"."dbt_marts"."dim_promotion" pr on pr.promo_code=s.promo_code

where not exists (
  select 1 from "lab9"."dbt_marts"."fct_sales" f where f.sale_id=s.sale_id
)
