WITH input_1 AS (
  SELECT
    *
  FROM {{ ref('ramiz_snowflake_github_demo', 'stg_passing_stats') }}
), filter_1 AS (
  SELECT
    *
  FROM input_1
  WHERE
    TEAM = 'KAN'
), my_first_model_kan_filt_sql AS (
  SELECT
    *
  FROM filter_1
)
SELECT
  *
FROM my_first_model_kan_filt_sql