
  create or replace  view ramiz_bozai_sandbox_dev.dbt_rbozai.stg_exposures
  
   as (
    with cte as (

            select * from ( 
                    values ('exposure.ramiz_snowflake_github_demo.passing_stats_dashboard', 
'passing_stats_dashboard', 
'exposure', 
'models/beginner_examples/beginner_examples_exposures.yml', 
cast(True as boolean), 
'dashboard', 
'high', 
'ramiz_snowflake_github_demo', 
'https://public.tableau.com/authoring/Attemptsvs_Completion2021Season/Dashboard1#1', 
'Patrick Mahomes', 
'halloffamer@nfl.com', 
'{}'), 

('exposure.ramiz_snowflake_github_demo.yearly_part_rollup', 
'yearly_part_rollup', 
'exposure', 
'models/marts/aggregates/exposures.yml', 
cast(True as boolean), 
'dashboard', 
'high', 
'ramiz_snowflake_github_demo', 
'https://example.com', 
'DBT User Bob', 
'dbtuserbob@getdbt.com', 
'{}') 
                ) as t (unique_id, 
name, 
resource_type, 
file_path, 
is_described, 
exposure_type, 
maturity, 
package_name, 
url, 
owner_name, 
owner_email, 
meta)

        )

        select * from cte


  );
