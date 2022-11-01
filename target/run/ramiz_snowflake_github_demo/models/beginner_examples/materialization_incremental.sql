begin;
    

        insert into ramiz_bozai_sandbox_dev.dbt_rbozai.materialization_incremental ("CUSTOMER_KEY", "NAME", "ADDRESS", "NATION_KEY", "PHONE_NUMBER", "ACCOUNT_BALANCE", "MARKET_SEGMENT", "COMMENT")
        (
            select "CUSTOMER_KEY", "NAME", "ADDRESS", "NATION_KEY", "PHONE_NUMBER", "ACCOUNT_BALANCE", "MARKET_SEGMENT", "COMMENT"
            from ramiz_bozai_sandbox_dev.dbt_rbozai.materialization_incremental__dbt_tmp
        );
    commit;