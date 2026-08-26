select
 metric_month,
 metric_key,
 count(*) as row_count
from "dvdrental"."dbt_metrics"."metric_company_monthly"
group by metric_month, metric_key
having count(*) > 1