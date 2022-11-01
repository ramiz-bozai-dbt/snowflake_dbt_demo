
  create or replace  view ramiz_bozai_sandbox_dev.dbt_rbozai.stg_metrics
  
   as (
    with cte as (

            select * from ( 
                    values ('metric.ramiz_snowflake_github_demo.avg_completion_rate', 
'avg_completion_rate', 
'metric', 
'models/beginner_examples/nfl_metrics.yml', 
cast(True as boolean), 
'', 
'', 
'Average Completion Rate', 
'', 
'season_year', 
'ramiz_snowflake_github_demo', 
'season_year', 

                'position'||'in'||'''(\'qb\', \'QB\')'''
                
              , 
'{}') 
                ) as t (unique_id, 
name, 
resource_type, 
file_path, 
is_described, 
metric_type, 
model, 
label, 
sql, 
timestamp, 
package_name, 
dimensions, 
filters, 
meta)

        )

        select * from cte


  );
