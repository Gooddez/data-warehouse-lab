
  create view "coffee_dw"."dbt"."metric_m004_discount_by_promotion__dbt_tmp"
    
    
  as (
    select
    'M004'::varchar                      as metric_key,
    date_trunc('month', d.full_date)::date as metric_month,
    pr.promo_code::varchar               as dimension_key,
    pr.promo_desc::varchar               as dimension_name,
    sum(f.discount_amount)::numeric      as metric_value
from "coffee_dw"."dbt"."fct_sales" f
join "coffee_dw"."dbt"."dim_date" d using (date_key)
join "coffee_dw"."dbt"."dim_promotion" pr using (promotion_key)
where pr.promo_code != 'NO_PROMO'
group by 1, 2, 3, 4
  );