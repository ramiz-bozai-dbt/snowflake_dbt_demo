
  
    

        create or replace transient table ramiz_bozai_sandbox_dev.dbt_rbozai.fct_unused_sources  as
        (-- this model finds cases where a source has no children

with source_relationships as (
    select  
        *
    from ramiz_bozai_sandbox_dev.dbt_rbozai.int_all_dag_relationships
    where parent_resource_type = 'source'
),

final as (
    select
        parent
    from source_relationships
    group by 1
    having max(distance) = 0
)

select * from final






    where 1 = 1
    

  

        );
      
  