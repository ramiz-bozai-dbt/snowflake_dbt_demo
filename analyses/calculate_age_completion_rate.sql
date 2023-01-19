select * 
from {{ metrics.calculate(
    metric('avg_completion_rate_by_age_group'),
    grain='year',
    dimensions=['age_bucket']
) }}