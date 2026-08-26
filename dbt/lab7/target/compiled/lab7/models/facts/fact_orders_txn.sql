select
    md5(s.order_id) as order_fact_key,
    -- Degenerate dimension
    s.order_id,
    -- Foreign keys
    d.date_key as order_date_key,
    p.product_key,
    c.customer_key,
    st.store_key,
    sf.staff_key,
    pm.payment_method_key,
    os.status_key,
    -- Measures
    s.unit_price,
    s.quantity,
    (s.unit_price * s.quantity)::numeric(14, 2) as gross_amount,
    s.discount_amount,
    s.net_amount,
    s.cost_amount,
    s.margin_amount,
    -- Audit columns
    cast('2026-08-26 03:33:10.495355+00:00' as timestamptz) as load_datetime,
    '2d2613ef-f5a4-4892-bd52-35dbe2bb35d5' as batch_id,
    'orders_log.csv'::varchar as source_system

from "lab7"."dbt"."stg_orders_log" as s
join "lab7"."dbt"."dim_date" as d
    on s.order_date = d.full_date
join "lab7"."dbt"."dim_product" as p
    on s.product_code = p.product_code
join "lab7"."dbt"."dim_customer" as c
    on s.customer_code = c.customer_code
join "lab7"."dbt"."dim_store" as st
    on s.store_code = st.store_code
join "lab7"."dbt"."dim_staff" as sf
    on s.staff_code = sf.staff_code
join "lab7"."dbt"."dim_payment_method" as pm
    on s.payment_method = pm.payment_method
join "lab7"."dbt"."dim_order_status" as os
    on s.status = os.status