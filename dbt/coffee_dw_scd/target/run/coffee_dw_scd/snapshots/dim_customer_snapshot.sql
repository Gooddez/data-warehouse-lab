
      update "coffee_dw_scd"."dbt_snapshots"."dim_customer_snapshot"
    set dbt_valid_to = DBT_INTERNAL_SOURCE.dbt_valid_to
    from "dim_customer_snapshot__dbt_tmp045926996647" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_scd_id::text = "coffee_dw_scd"."dbt_snapshots"."dim_customer_snapshot".dbt_scd_id::text
      and DBT_INTERNAL_SOURCE.dbt_change_type::text in ('update'::text, 'delete'::text)
      
        and "coffee_dw_scd"."dbt_snapshots"."dim_customer_snapshot".dbt_valid_to is null;
      


    insert into "coffee_dw_scd"."dbt_snapshots"."dim_customer_snapshot" ("customer_code", "customer_name", "gender", "birth_year", "province", "state_start_date", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id")
    select DBT_INTERNAL_SOURCE."customer_code",DBT_INTERNAL_SOURCE."customer_name",DBT_INTERNAL_SOURCE."gender",DBT_INTERNAL_SOURCE."birth_year",DBT_INTERNAL_SOURCE."province",DBT_INTERNAL_SOURCE."state_start_date",DBT_INTERNAL_SOURCE."dbt_updated_at",DBT_INTERNAL_SOURCE."dbt_valid_from",DBT_INTERNAL_SOURCE."dbt_valid_to",DBT_INTERNAL_SOURCE."dbt_scd_id"
    from "dim_customer_snapshot__dbt_tmp045926996647" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_change_type::text = 'insert'::text;

  