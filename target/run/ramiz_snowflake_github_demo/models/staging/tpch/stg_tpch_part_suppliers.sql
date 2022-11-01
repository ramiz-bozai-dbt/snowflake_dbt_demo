
  create or replace  view ramiz_bozai_sandbox_dev.dbt_rbozai.stg_tpch_part_suppliers
  
   as (
    with source as (

    select * from raw.tpch_sf001.partsupp

),

renamed as (

    select
    
        md5(cast(coalesce(cast(ps_partkey as 
    varchar
), '') || '-' || coalesce(cast(ps_suppkey as 
    varchar
), '') as 
    varchar
)) 
                as part_supplier_key,
        ps_partkey as part_key,
        ps_suppkey as supplier_key,
        ps_availqty as available_quantity,
        ps_supplycost as cost,
        ps_comment as comment

    from source

)

select * from renamed
  );
