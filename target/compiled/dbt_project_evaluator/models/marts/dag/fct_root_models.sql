-- this model finds cases where a model has 0 direct parents, likely due to a lack of source or ref function

with model_relationships as (
    select  
        *
    from ramiz_bozai_sandbox_dev.dbt_rbozai.int_all_dag_relationships
    where child_resource_type = 'model'
),

final as (
    select
        child
    from model_relationships
    group by 1
    having max(distance) = 0
)

select * from final






    where 1 = 1
    

  
