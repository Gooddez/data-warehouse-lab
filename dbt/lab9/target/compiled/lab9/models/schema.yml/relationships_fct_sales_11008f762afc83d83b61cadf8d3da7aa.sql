
    
    

with child as (
    select promo_key as from_field
    from "lab9"."dbt_marts"."fct_sales"
    where promo_key is not null
),

parent as (
    select promo_key as to_field
    from "lab9"."dbt_marts"."dim_promotion"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


