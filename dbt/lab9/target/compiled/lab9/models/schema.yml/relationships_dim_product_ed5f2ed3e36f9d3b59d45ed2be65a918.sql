
    
    

with child as (
    select category_key as from_field
    from "lab9"."dbt_marts"."dim_product"
    where category_key is not null
),

parent as (
    select category_key as to_field
    from "lab9"."dbt_marts"."dim_category"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


