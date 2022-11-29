import pandas as pd

def model(dbt, session):
  
    # DataFrame representing my previous data, using ref function, but Python syntax
    upstream_model = dbt.ref("my_first_python_model")
    
    statistics = upstream_model.describe()

    return statistics