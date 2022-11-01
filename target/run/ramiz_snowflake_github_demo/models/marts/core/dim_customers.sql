
  
    

        create or replace  table ramiz_bozai_sandbox_dev.dbt_rbozai.dim_customers  as
        (

with customer as (

    select * from ramiz_bozai_sandbox_dev.dbt_rbozai.stg_tpch_customers

),
nation as (

    select * from ramiz_bozai_sandbox_dev.dbt_rbozai.stg_tpch_nations
),
region as (

    select * from ramiz_bozai_sandbox_dev.dbt_rbozai.stg_tpch_regions

),
final as (
    select 
        customer.customer_key,
        customer.name,
        customer.address,
        
        nation.name as nation,
        
        region.name as region,
        customer.phone_number,
        customer.account_balance,
        customer.market_segment
    from
        customer
        inner join nation
            on customer.nation_key = nation.nation_key
        inner join region
            on nation.region_key = region.region_key
)
select 
    *
from
    final
order by
    customer_key
        );
      
  