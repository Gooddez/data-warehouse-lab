
  create view "lab7"."dbt"."fact_orders_daily_snapshot__dbt_tmp"
    
    
  as (
    with snapshot_grid as (
    select
        d.date_key as snapshot_date_key,
        s.store_key,
        p.product_key
    from "lab7"."dbt"."dim_date" as d
    cross join "lab7"."dbt"."dim_store" as s
    cross join "lab7"."dbt"."dim_product" as p

),

daily_activity as (
    select
        order_date_key as snapshot_date_key,
        store_key,
        product_key,
        count(distinct order_id)::integer as orders_count,
        sum(quantity)::integer as qty_sold,
        sum(gross_amount)::numeric(14, 2) as gross_amount,
        sum(discount_amount)::numeric(14, 2) as discount_amount,
        sum(net_amount)::numeric(14, 2) as net_amount,
        sum(margin_amount)::numeric(14, 2) as margin_amount
    from "lab7"."dbt"."fact_orders_txn"
    group by order_date_key, store_key, product_key

)

select
    g.snapshot_date_key,
    g.store_key,
    g.product_key,
    coalesce(a.orders_count, 0) as orders_count,
    coalesce(a.qty_sold, 0) as qty_sold,
    coalesce(a.gross_amount, 0)::numeric(14, 2) as gross_amount,
    coalesce(a.discount_amount, 0)::numeric(14, 2)
        as discount_amount,
    coalesce(a.net_amount, 0)::numeric(14, 2) as net_amount,
    coalesce(a.margin_amount, 0)::numeric(14, 2) as margin_amount,
    cast('2026-08-26 03:33:10.495355+00:00' as timestamptz) as load_datetime,
    '2d2613ef-f5a4-4892-bd52-35dbe2bb35d5' as batch_id

from snapshot_grid as g
left join daily_activity as a
    on g.snapshot_date_key = a.snapshot_date_key
    and g.store_key = a.store_key
    and g.product_key = a.product_key
  );