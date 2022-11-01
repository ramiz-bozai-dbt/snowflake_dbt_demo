
  create or replace  view ramiz_bozai_sandbox_dev.dbt_rbozai.stg_metric_relationships
  
   as (
    with relationships as (

    with cte as (

            select * from ( 
                    values (cast('metric.ramiz_snowflake_github_demo.avg_completion_rate' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.my_first_model' as 
    varchar
), 
True) 
                ) as t (resource_id, 
direct_parent_id, 
is_primary_relationship)

        )

        select * from cte



),


final as (
    select 
        md5(cast(coalesce(cast(resource_id as 
    varchar
), '') || '-' || coalesce(cast(direct_parent_id as 
    varchar
), '') as 
    varchar
)) as unique_id, 
        *
    from relationships
)

select distinct * from final
  );
