
    
    

with child as (
    select metric_key as from_field
    from "dvdrental"."dbt_metrics"."metric_store_monthly"
    where metric_key is not null
),

parent as (
    select metric_key as to_field
    from "dvdrental"."dbt_metadata"."metric_definition"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


