import snowflake.snowpark.functions
import pandas as pd

def model(dbt, session):
  
    # DataFrame representing my previous data, using ref function, but Python syntax
    upstream_model = dbt.ref("stg_passing_stats")
    
    # Calculate completion rate
    #upstream_model_calculated = dbt.source("upstream_source_name", "table_name")
    
    
    pd_upstream = upstream_model.to_pandas()

    return pd_upstream