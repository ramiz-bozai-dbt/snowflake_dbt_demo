
  
    

        create or replace transient table ramiz_bozai_sandbox_dev.dbt_rbozai.fct_staging_dependent_on_marts_or_intermediate  as
        (-- cases where a staging model depends on a marts/intermediate model
-- data should flow from raw -> staging -> intermediate -> marts
with direct_model_relationships as (
    select  
        *
    from ramiz_bozai_sandbox_dev.dbt_rbozai.int_all_dag_relationships
    where distance = 1
    and parent_resource_type = 'model'
    and child_resource_type = 'model'
),
final as (
    select
        parent,
        parent_model_type,
        child,
        child_model_type
    from direct_model_relationships
    where child_model_type = 'staging'
    and parent_model_type in ('marts', 'intermediate')
)
select * from final






    where 1 = 1
    

  

        );
      
  