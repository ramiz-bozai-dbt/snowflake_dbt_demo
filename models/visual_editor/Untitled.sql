WITH stg_passing_stats AS (
  SELECT
    TEAM,
    AGE,
    POSITION,
    COMPLETIONS,
    ATTEMPTS,
    YARDS,
    TD,
    SEASON_YEAR,
    PLAYER_NAME
  FROM {{ ref('stg_passing_stats') }}
), filter_1 AS (
  SELECT
    *
  FROM stg_passing_stats
  WHERE
    TEAM = 'LAC'
)
SELECT
  *
FROM filter_1