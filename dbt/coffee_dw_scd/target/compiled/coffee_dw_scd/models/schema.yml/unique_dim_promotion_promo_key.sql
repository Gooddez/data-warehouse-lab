
    
    

select
    promo_key as unique_field,
    count(*) as n_records

from "coffee_dw_scd"."dbt_marts"."dim_promotion"
where promo_key is not null
group by promo_key
having count(*) > 1


