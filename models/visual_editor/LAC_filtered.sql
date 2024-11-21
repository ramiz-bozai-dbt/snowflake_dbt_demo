WITH stg_shooting_stats AS (
  SELECT
    PLAYER,
    SQUAD,
    AGE,
    GOALS,
    SHOTS,
    FREE_KICKS
  FROM {{ ref('stg_shooting_stats') }}
), stg_passing_stats AS (
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
), join_1 AS (
  SELECT
    stg_passing_stats.TEAM,
    stg_passing_stats.AGE,
    stg_passing_stats.POSITION,
    stg_passing_stats.COMPLETIONS,
    stg_passing_stats.ATTEMPTS,
    stg_passing_stats.YARDS,
    stg_passing_stats.TD,
    stg_passing_stats.SEASON_YEAR,
    stg_passing_stats.PLAYER_NAME,
    stg_shooting_stats.PLAYER,
    stg_shooting_stats.SQUAD,
    stg_shooting_stats.AGE AS AGE_1,
    stg_shooting_stats.GOALS,
    stg_shooting_stats.SHOTS,
    stg_shooting_stats.FREE_KICKS
  FROM stg_passing_stats
  JOIN stg_shooting_stats
    ON stg_passing_stats.TEAM = stg_shooting_stats.SQUAD
)
SELECT
  *
FROM join_1