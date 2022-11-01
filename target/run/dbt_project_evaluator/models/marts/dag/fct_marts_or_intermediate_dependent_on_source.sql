
  
    

        create or replace transient table ramiz_bozai_sandbox_dev.dbt_rbozai.fct_marts_or_intermediate_dependent_on_source  as
        (-- cases where a marts/intermediate model directly references a raw source
with direct_relationships as (
    select  
        *
    from ramiz_bozai_sandbox_dev.dbt_rbozai.int_all_dag_relationships
    where distance = 1
),
final as (
    select
        parent,
        parent_resource_type,
        child,
        child_model_type
    from direct_relationships
    where parent_resource_type = 'source'
    and child_model_type in ('marts', 'intermediate')
)
select * from final






    where 1 = 1
    

  

        );
      
  