
  create or replace  view ramiz_bozai_sandbox_dev.dbt_rbozai.fct_undocumented_models
  
   as (
    with

all_resources as (
    select * from ramiz_bozai_sandbox_dev.dbt_rbozai.int_all_graph_resources

),

final as (

    select
        resource_name,
        model_type

    from all_resources
    where not is_described and resource_type = 'model'

)

select * from final






    where 1 = 1
    

  

  );
