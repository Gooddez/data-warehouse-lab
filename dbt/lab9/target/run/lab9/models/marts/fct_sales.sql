
      -- back compat for old kwarg name
  
  
        
            
            
        
    

    

    merge into "lab9"."dbt_marts"."fct_sales" as DBT_INTERNAL_DEST
        using "fct_sales__dbt_tmp023615318169" as DBT_INTERNAL_SOURCE
        on (
                DBT_INTERNAL_SOURCE.sale_id = DBT_INTERNAL_DEST.sale_id
            )

    
    when matched then update set
        "sale_id" = DBT_INTERNAL_SOURCE."sale_id","invoice_number" = DBT_INTERNAL_SOURCE."invoice_number","date_key" = DBT_INTERNAL_SOURCE."date_key","customer_key" = DBT_INTERNAL_SOURCE."customer_key","product_key" = DBT_INTERNAL_SOURCE."product_key","store_key" = DBT_INTERNAL_SOURCE."store_key","staff_key" = DBT_INTERNAL_SOURCE."staff_key","promo_key" = DBT_INTERNAL_SOURCE."promo_key","quantity" = DBT_INTERNAL_SOURCE."quantity","revenue" = DBT_INTERNAL_SOURCE."revenue","points_redeemed" = DBT_INTERNAL_SOURCE."points_redeemed"
    

    when not matched then insert
        ("sale_id", "invoice_number", "date_key", "customer_key", "product_key", "store_key", "staff_key", "promo_key", "quantity", "revenue", "points_redeemed")
    values
        ("sale_id", "invoice_number", "date_key", "customer_key", "product_key", "store_key", "staff_key", "promo_key", "quantity", "revenue", "points_redeemed")


  