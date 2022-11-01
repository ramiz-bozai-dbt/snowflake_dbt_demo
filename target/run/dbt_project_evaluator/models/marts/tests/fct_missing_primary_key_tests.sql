
  create or replace  view ramiz_bozai_sandbox_dev.dbt_rbozai.fct_missing_primary_key_tests
  
   as (
    with 

tests as (
    select * from ramiz_bozai_sandbox_dev.dbt_rbozai.int_model_test_summary 
),

final as (

    select 
        *
    from tests
    where not(is_primary_key_tested)

)

select * from final






    where 1 = 1
    

  

  );
