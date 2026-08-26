select
    snapshot_date_key,
    store_key,
    product_key,
    count(*) as row_count

from "lab7"."dbt"."fact_orders_daily_snapshot"
group by snapshot_date_key, store_key, product_key
having count(*) > 1