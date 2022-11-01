
  
    

        create or replace transient table ramiz_bozai_sandbox_dev.dbt_rbozai.fct_source_fanout  as
        (-- this model finds cases where a source is used in multiple direct downstream models
with direct_source_relationships as (
    select  
        *
    from ramiz_bozai_sandbox_dev.dbt_rbozai.int_all_dag_relationships
    where distance = 1
    and parent_resource_type = 'source'
    and child_resource_type = 'model'
),

source_fanout as (
    select
        parent,
        
    listagg(
        child,
        ', '
        )
        within group (order by child) as model_children
    from direct_source_relationships
    group by 1
    having count(*) > 1
)

select * from source_fanout






    where 1 = 1
    

  

        );
      
  