
  create or replace  view ramiz_bozai_sandbox_dev.dbt_rbozai.stg_tpch_suppliers
  
   as (
    with source as (

    select * from raw.tpch_sf001.supplier

),

renamed as (

    select
    
        s_suppkey as supplier_key,
        s_name as supplier_name,
        s_address as supplier_address,
        s_nationkey as nation_key,
        s_phone as phone_number,
        s_acctbal as account_balance,
        s_comment as comment

    from source

)

select * from renamed
  );