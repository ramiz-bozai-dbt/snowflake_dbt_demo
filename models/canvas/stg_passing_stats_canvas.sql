WITH passing_stats AS (
  /* Passing data from the 2021 season. */
  SELECT
    YEAR,
    PLAYER,
    TM,
    AGE,
    POS,
    CMP,
    ATT,
    YDS,
    TD
  FROM {{ source('nfl', 'passing_stats') }}
), formula AS (
  SELECT
    *,
    MD5(year || player) AS id,
    TO_TIMESTAMP(year, 'YYYY') AS season_year,
    REGEXP_REPLACE(player, '[^a-zA-Z0-9 ]', '') AS player_name
  FROM passing_stats
), stg_passing_stats_canvas AS (
  SELECT
    YEAR,
    TM,
    AGE,
    POS,
    CMP,
    ATT,
    YDS,
    TD,
    id,
    season_year,
    player_name
  FROM formula
)
SELECT
  *
FROM stg_passing_stats_canvas