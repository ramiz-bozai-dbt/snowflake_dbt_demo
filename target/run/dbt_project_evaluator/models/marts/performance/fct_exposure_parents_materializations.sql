
  create or replace  view ramiz_bozai_sandbox_dev.dbt_rbozai.fct_exposure_parents_materializations
  
   as (
    with 

direct_exposure_relationships as (
    select * from ramiz_bozai_sandbox_dev.dbt_rbozai.int_all_dag_relationships
    where 
        distance = 1
        and child_resource_type = 'exposure'
        and parent_resource_type = 'model'
        and parent_materialized in ('view', 'ephemeral')
),

final as (

    select 
        parent as parent_model_name,
        child as exposure_name,
        parent_materialized as parent_model_materialization

    from direct_exposure_relationships

)

select * from final






    where 1 = 1
    

  

  );
