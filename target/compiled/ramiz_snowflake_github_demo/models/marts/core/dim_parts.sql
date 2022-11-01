
with part as (

    select * from ramiz_bozai_sandbox_dev.dbt_rbozai.stg_tpch_parts

),

final as (
    select 
        part_key,
        manufacturer,
        name,
        brand,
        type,
        size,
        container,
        retail_price
    from
        part
)
select *
from final  
order by part_key