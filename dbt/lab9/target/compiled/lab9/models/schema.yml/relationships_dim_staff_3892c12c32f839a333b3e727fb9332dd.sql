
    
    

with child as (
    select position_key as from_field
    from "lab9"."dbt_marts"."dim_staff"
    where position_key is not null
),

parent as (
    select position_key as to_field
    from "lab9"."dbt_marts"."dim_position"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


