select
    md5(store_code) as store_key,
    store_code,
    max(store_name) as store_name

from "lab7"."dbt"."stg_orders_log"
group by store_code