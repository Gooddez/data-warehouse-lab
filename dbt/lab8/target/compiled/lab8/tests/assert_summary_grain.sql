select
    month_start,
    region_key,
    count(*) as duplicate_rows
from "lab8"."dbt_aggregates"."agg_sales_region_month"
group by month_start, region_key
having count(*) > 1