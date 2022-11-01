begin;
    

        insert into ramiz_bozai_sandbox_dev.dbt_rbozai.incremental_sample ("QUERY_ID", "QUERY_TEXT", "END_TIME", "CREDITS_USED_CLOUD_SERVICES")
        (
            select "QUERY_ID", "QUERY_TEXT", "END_TIME", "CREDITS_USED_CLOUD_SERVICES"
            from ramiz_bozai_sandbox_dev.dbt_rbozai.incremental_sample__dbt_tmp
        );
    commit;