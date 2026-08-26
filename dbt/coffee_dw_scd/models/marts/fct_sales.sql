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
from {{ ref('stg_coffee_sales') }} s
join {{ ref('dim_date') }} d
  on s.sale_date = d.sale_date
join {{ ref('dim_customer') }} c
  on s.customer_code = c.customer_code
 and s.sale_date >= c.start_date
 and s.sale_date < c.end_date
join {{ ref('dim_product') }} p
  on s.product_code = p.product_code
 and s.size = p.size
join {{ ref('dim_store') }} st
  on s.store_code = st.store_code
join {{ ref('dim_staff') }} sf
  on s.staff_code = sf.staff_code
left join {{ ref('dim_promotion') }} pr
  on s.promo_code = pr.promo_code