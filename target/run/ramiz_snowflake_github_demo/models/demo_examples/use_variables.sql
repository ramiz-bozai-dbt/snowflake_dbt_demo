
  
    

        create or replace transient table ramiz_bozai_sandbox_dev.dbt_rbozai.use_variables  as
        (-- This is here to show that data older than start_date exists - run this first
-- select min(order_date) from ramiz_bozai_sandbox_dev.dbt_rbozai.fct_order_items

-- start_date is defined in the dbt_project.yml 
-- to illustrate overriding variables from the command line, run dbt run -m use_variables --vars '{"start_date": "1996-01-01"}'
select * from ramiz_bozai_sandbox_dev.dbt_rbozai.fct_order_items where order_date >= '1999-01-01'
        );
      
  