select distinct
    md5(coalesce(promo_code, 'NO_PROMO')) as promotion_key,
    coalesce(promo_code, 'NO_PROMO') as promo_code,
    coalesce(promo_desc, 'NO_PROMO') as promo_desc
from "coffee_dw"."dbt"."stg_coffee_sales"