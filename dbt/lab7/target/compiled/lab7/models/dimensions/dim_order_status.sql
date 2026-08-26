select
    md5(status) as status_key,
    status

from "lab7"."dbt"."stg_orders_log"
group by status