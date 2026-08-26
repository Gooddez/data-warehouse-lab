select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    province_name as unique_field,
    count(*) as n_records

from "lab8"."dbt_raw"."province_region_mapping_v2"
where province_name is not null
group by province_name
having count(*) > 1



      
    ) dbt_internal_test