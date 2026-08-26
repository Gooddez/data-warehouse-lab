select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    metric_key as unique_field,
    count(*) as n_records

from "dvdrental"."dbt_metadata"."metric_definition"
where metric_key is not null
group by metric_key
having count(*) > 1



      
    ) dbt_internal_test