
  
    

        create or replace transient table ramiz_bozai_sandbox_dev.dbt_rbozai.my_first_model  as
        (--This is my very first model.

select
    *,
    completions/attempts as completion_pct --Let's calculate the completion rate.

from ramiz_bozai_sandbox_dev.dbt_rbozai.stg_passing_stats
--
--
--
        );
      
  