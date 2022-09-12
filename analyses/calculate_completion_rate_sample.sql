  select *
  from 
  {{ metrics.calculate(
      metric('avg_completion_rate'), 
      grain='year'
  )}}