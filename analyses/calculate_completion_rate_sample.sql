  select *
  from 
  {{ metrics.calculate(
      metric_name = 'avg_completion_rate',
      grain = 'year'
  )
  }}