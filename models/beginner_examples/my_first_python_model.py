import snowflake.snowpark.functions
import pandas as pd

def model(dbt, session):
  
    # DataFrame representing my previous data, using ref function, but Python syntax
    upstream_model = dbt.ref("stg_passing_stats")
    
    # Calculate completion rate
    upstream_model_df = upstream_model.to_pandas()
    
    upstream_model_df["completion_rate"] = upstream_model_df["COMPLETIONS"] / upstream_model_df["ATTEMPTS"]
    

    return upstream_model_df