WITH model AS (
  SELECT
    *
  FROM {{ ref('ramiz_snowflake_github_demo', 'stg_passing_stats') }}
), filter_1 AS (
  SELECT
    *
  FROM model
  WHERE
    TEAM = 'KAN'
), kan_canvas_sql AS (
  SELECT
    *
  FROM filter_1
)
SELECT
  *
FROM kan_canvas_sql