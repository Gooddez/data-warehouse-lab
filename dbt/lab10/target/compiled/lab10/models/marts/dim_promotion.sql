with promotions as (
    select distinct
        promo_code,
        promo_desc
    from "lab10"."warehouse"."stg_coffee_sales"
    where promo_code is not null
)

select
    md5(promo_code) as promotion_key,
    promo_code,
    promo_desc
from promotions