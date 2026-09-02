
    
    

with child as (
    select province_key as from_field
    from "lab9"."dbt_marts"."dim_store"
    where province_key is not null
),

parent as (
    select province_key as to_field
    from "lab9"."dbt_marts"."dim_province"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


