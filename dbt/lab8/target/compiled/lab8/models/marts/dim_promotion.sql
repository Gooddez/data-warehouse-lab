select distinct
    md5(promo_code) as promo_key,
    promo_code,
    promo_desc
from "lab8"."dbt_staging"."stg_coffee_sales"
where promo_code is not null