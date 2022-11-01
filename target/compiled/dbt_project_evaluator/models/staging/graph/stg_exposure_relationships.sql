with relationships as (

    with cte as (

            select * from ( 
                    values (cast('exposure.ramiz_snowflake_github_demo.passing_stats_dashboard' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.my_first_model' as 
    varchar
), 
True), 

(cast('exposure.ramiz_snowflake_github_demo.yearly_part_rollup' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.agg_ship_modes_dynamic_pivot' as 
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