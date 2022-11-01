
  
    

        create or replace transient table ramiz_bozai_sandbox_dev.dbt_rbozai.fct_model_fanout  as
        (with all_dag_relationships as (
    select  
        *
    from ramiz_bozai_sandbox_dev.dbt_rbozai.int_all_dag_relationships
),

-- find all models without children
models_without_children as (
    select
        parent
    from all_dag_relationships
    where parent_resource_type = 'model'
    group by 1
    having max(distance) = 0
),

-- all parents with more direct children than the threshold for fanout (determined by variable models_fanout_threshold, default 3)
    -- Note: only counts "leaf children" - direct chilren that are models AND are child-less (are at the right-most-point in the DAG)
model_fanout as (
    select 
        all_dag_relationships.parent,
        
    listagg(
        all_dag_relationships.child,
        ', '
        )
        within group (order by all_dag_relationships.child) as leaf_children
    from all_dag_relationships
    inner join models_without_children
        on all_dag_relationships.child = models_without_children.parent
    where all_dag_relationships.distance = 1 and all_dag_relationships.child_resource_type = 'model'
    group by 1
    having count(*) >= 3
)

select * from model_fanout






    where 1 = 1
    

  

        );
      
  