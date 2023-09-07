{{
    config(
        materialized='view'
    )
}}


--This is my very first model.

select *

from {{ ref('my_first_model') }}

where season_year = '2022-01-01'