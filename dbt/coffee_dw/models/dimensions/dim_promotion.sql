select distinct
    md5(coalesce(promo_code, 'NO_PROMO')) as promotion_key,
    coalesce(promo_code, 'NO_PROMO') as promo_code,
    coalesce(promo_desc, 'NO_PROMO') as promo_desc
from {{ ref('stg_coffee_sales') }}