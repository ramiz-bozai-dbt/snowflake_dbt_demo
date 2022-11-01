import snowflake.snowpark.functions
import pandas as pd

def model(dbt, session):
  
    # DataFrame representing my previous data, using ref function, but Python syntax
    upstream_model = dbt.ref("stg_passing_stats")
    
    # Calculate completion rate
    upstream_model_df = upstream_model.to_pandas()
    
    upstream_model_df["completion_rate"] = upstream_model_df["COMPLETIONS"] / upstream_model_df["ATTEMPTS"]
    

    return upstream_model_df


# This part is user provided model code
# you will need to copy the next section to run the code
# COMMAND ----------
# this part is dbt logic for get ref work, do not modify

def ref(*args,dbt_load_df_function):
    refs = {"stg_passing_stats": "ramiz_bozai_sandbox_dev.dbt_rbozai.stg_passing_stats"}
    key = ".".join(args)
    return dbt_load_df_function(refs[key])


def source(*args, dbt_load_df_function):
    sources = {}
    key = ".".join(args)
    return dbt_load_df_function(sources[key])


config_dict = {}


class config:
    def __init__(self, *args, **kwargs):
        pass

    @staticmethod
    def get(key, default=None):
        return config_dict.get(key, default)

class this:
    """dbt.this() or dbt.this.identifier"""
    database = 'ramiz_bozai_sandbox_dev'
    schema = 'dbt_rbozai'
    identifier = 'my_first_python_model'
    def __repr__(self):
        return 'ramiz_bozai_sandbox_dev.dbt_rbozai.my_first_python_model'


class dbtObj:
    def __init__(self, load_df_function) -> None:
        self.source = lambda *args: source(*args, dbt_load_df_function=load_df_function)
        self.ref = lambda *args: ref(*args, dbt_load_df_function=load_df_function)
        self.config = config
        self.this = this()
        self.is_incremental = False

# COMMAND ----------

# To run this in snowsight, you need to select entry point to be main
# And you may have to modify the return type to text to get the result back
# def main(session):
#     dbt = dbtObj(session.table)
#     df = model(dbt, session)
#     return df.collect()

# to run this in local notebook, you need to create a session following examples https://github.com/Snowflake-Labs/sfguide-getting-started-snowpark-python
# then you can do the following to run model
# dbt = dbtObj(session.table)
# df = model(dbt, session)

