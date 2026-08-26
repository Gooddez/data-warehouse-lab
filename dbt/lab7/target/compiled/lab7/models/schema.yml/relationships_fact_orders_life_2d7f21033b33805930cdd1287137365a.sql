
    
    

with child as (
    select current_status_key as from_field
    from "lab7"."dbt"."fact_orders_lifecycle"
    where current_status_key is not null
),

parent as (
    select status_key as to_field
    from "lab7"."dbt"."dim_order_status"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


