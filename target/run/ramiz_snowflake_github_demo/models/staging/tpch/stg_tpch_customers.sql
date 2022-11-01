
  create or replace  view ramiz_bozai_sandbox_dev.dbt_rbozai.stg_tpch_customers
  
   as (
    with source as (

    select * from raw.tpch_sf001.customer

),

renamed as (

    select
    
        c_custkey as customer_key,
        c_name as name,
        c_address as address, 
        c_nationkey as nation_key,
        c_phone as phone_number,
        c_acctbal as account_balance,
        c_mktsegment as market_segment,
        c_comment as comment

    from source

)

select * from renamed
  );
