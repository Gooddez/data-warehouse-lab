
  
    

  create  table "coffee_dw_snowflake"."dbt_metadata"."hierarchy_def__dbt_tmp"
  
  
    as
  
  (
    with hierarchy as (
    select *
    from (values
        ('geo', 1, 'region', 'dim_region',
         'region_key', 'region_name'),
        ('geo', 2, 'province', 'dim_province',
         'province_key', 'province_name')
    ) as h(
        hierarchy_name,
        level_num,
        level_name,
        table_name,
        key_field,
        name_field
    )
)
select * from hierarchy
  );
  