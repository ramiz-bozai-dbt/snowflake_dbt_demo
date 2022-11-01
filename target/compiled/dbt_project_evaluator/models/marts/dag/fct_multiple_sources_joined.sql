-- this model finds cases where a model references more than one source
with direct_source_relationships as (
    select  
        *
    from ramiz_bozai_sandbox_dev.dbt_rbozai.int_all_dag_relationships
    where distance = 1
    and parent_resource_type = 'source'
),

multiple_sources_joined as (
    select
        child,
        
    listagg(
        parent,
        ', '
        )
        within group (order by parent) as source_parents
    from direct_source_relationships
    group by 1
    having count(*) > 1
)

select * from multiple_sources_joined






    where 1 = 1
    

  
