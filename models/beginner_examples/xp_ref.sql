select *
from {{ ref('dbt_ramiz_upstream_testing', 'ramiz_sample') }}