
  create or replace  view ramiz_bozai_sandbox_dev.dbt_rbozai.fct_chained_views_dependencies
  
   as (
    with all_relationships as (
    select  
        *
    from ramiz_bozai_sandbox_dev.dbt_rbozai.int_all_dag_relationships
    where distance <> 0
),

final as (
    select
        parent,
        child, -- the model with potentially long run time / compilation time, improve performance by breaking the upstream chain of views
        distance,
        path
    from all_relationships
    where is_dependent_on_chain_of_views
    and child_resource_type = 'model'
)

select * from final






    where 1 = 1
    

  


order by distance desc
  );
