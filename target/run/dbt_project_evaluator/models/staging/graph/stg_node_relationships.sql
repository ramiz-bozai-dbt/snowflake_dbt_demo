
  
    

        create or replace transient table ramiz_bozai_sandbox_dev.dbt_rbozai.stg_node_relationships  as
        (with relationships as (

    with cte as (

            select * from ( 
                    values (cast('model.ramiz_snowflake_github_demo.materialization_incremental' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.customer' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.my_first_model_without_ref' as 
    varchar
), 
cast(NULL as 
    varchar
), 
FALSE), 

(cast('model.ramiz_snowflake_github_demo.incremental_sample' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_account_usage' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.my_first_model' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_passing_stats' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.all_days' as 
    varchar
), 
cast(NULL as 
    varchar
), 
FALSE), 

(cast('model.ramiz_snowflake_github_demo.stg_passing_stats_dynamic_source' as 
    varchar
), 
cast(NULL as 
    varchar
), 
FALSE), 

(cast('model.ramiz_snowflake_github_demo.stg_passing_stats' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.nfl.passing_stats' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.stg_account_usage' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.account_usage.query_history' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.stg_tpch_regions' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.region' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.stg_tpch_suppliers' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.supplier' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.stg_tpch_orders' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.orders' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.stg_tpch_line_items' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.lineitem' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.stg_tpch_part_suppliers' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.partsupp' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.stg_tpch_customers' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.customer' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.stg_tpch_nations' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.nation' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.stg_tpch_parts' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.part' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.use_variables' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.fct_order_items' as 
    varchar
), 
False), 

(cast('model.ramiz_snowflake_github_demo.use_variables' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.fct_order_items' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.agg_ship_modes_dynamic_pivot' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.fct_order_items' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.agg_ship_modes_hardcoded_pivot' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.fct_order_items' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.dim_customers' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_customers' as 
    varchar
), 
False), 

(cast('model.ramiz_snowflake_github_demo.dim_customers' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_nations' as 
    varchar
), 
False), 

(cast('model.ramiz_snowflake_github_demo.dim_customers' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_regions' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.dim_suppliers' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_suppliers' as 
    varchar
), 
False), 

(cast('model.ramiz_snowflake_github_demo.dim_suppliers' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_nations' as 
    varchar
), 
False), 

(cast('model.ramiz_snowflake_github_demo.dim_suppliers' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_regions' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.dim_parts' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_parts' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.fct_orders' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_orders' as 
    varchar
), 
False), 

(cast('model.ramiz_snowflake_github_demo.fct_orders' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.order_items' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.fct_order_items' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.order_items' as 
    varchar
), 
False), 

(cast('model.ramiz_snowflake_github_demo.fct_order_items' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.part_suppliers' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.order_items' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_orders' as 
    varchar
), 
False), 

(cast('model.ramiz_snowflake_github_demo.order_items' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_line_items' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.part_suppliers' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_parts' as 
    varchar
), 
False), 

(cast('model.ramiz_snowflake_github_demo.part_suppliers' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_suppliers' as 
    varchar
), 
False), 

(cast('model.ramiz_snowflake_github_demo.part_suppliers' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_part_suppliers' as 
    varchar
), 
True), 

(cast('model.ramiz_snowflake_github_demo.my_first_python_model' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_passing_stats' as 
    varchar
), 
True), 

(cast('snapshot.ramiz_snowflake_github_demo.my_first_snapshot' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.jaffle_shop.orders' as 
    varchar
), 
True), 

(cast('analysis.ramiz_snowflake_github_demo.calculate_completion_rate_sample' as 
    varchar
), 
cast('model.metrics.dbt_metrics_default_calendar' as 
    varchar
), 
False), 

(cast('analysis.ramiz_snowflake_github_demo.calculate_completion_rate_sample' as 
    varchar
), 
cast('metric.ramiz_snowflake_github_demo.avg_completion_rate' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.macro_stg_tpch_orders_assert_pos_price' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_orders' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.stg_tpch_orders_assert_positive_price' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_orders' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.stg_passing_stats_assert_positive_yards' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_passing_stats' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.macro_stg_tphc_suppliers_assert_pos_acct_bal' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_suppliers' as 
    varchar
), 
True), 

(cast('seed.ramiz_snowflake_github_demo.snowflake_contract_rates' as 
    varchar
), 
cast(NULL as 
    varchar
), 
FALSE), 

(cast('model.dbt_project_evaluator.stg_nodes' as 
    varchar
), 
cast(NULL as 
    varchar
), 
FALSE), 

(cast('model.dbt_project_evaluator.stg_metrics' as 
    varchar
), 
cast(NULL as 
    varchar
), 
FALSE), 

(cast('model.dbt_project_evaluator.stg_exposure_relationships' as 
    varchar
), 
cast(NULL as 
    varchar
), 
FALSE), 

(cast('model.dbt_project_evaluator.stg_exposures' as 
    varchar
), 
cast(NULL as 
    varchar
), 
FALSE), 

(cast('model.dbt_project_evaluator.stg_node_relationships' as 
    varchar
), 
cast(NULL as 
    varchar
), 
FALSE), 

(cast('model.dbt_project_evaluator.stg_metric_relationships' as 
    varchar
), 
cast(NULL as 
    varchar
), 
FALSE), 

(cast('model.dbt_project_evaluator.stg_sources' as 
    varchar
), 
cast(NULL as 
    varchar
), 
FALSE), 

(cast('model.dbt_project_evaluator.stg_naming_convention_prefixes' as 
    varchar
), 
cast(NULL as 
    varchar
), 
FALSE), 

(cast('model.dbt_project_evaluator.stg_naming_convention_folders' as 
    varchar
), 
cast(NULL as 
    varchar
), 
FALSE), 

(cast('model.dbt_project_evaluator.fct_direct_join_to_source' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_dag_relationships' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_direct_join_to_source' as 
    varchar
), 
cast('seed.dbt_project_evaluator.dbt_project_evaluator_exceptions' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.fct_rejoining_of_upstream_concepts' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_dag_relationships' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_rejoining_of_upstream_concepts' as 
    varchar
), 
cast('seed.dbt_project_evaluator.dbt_project_evaluator_exceptions' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.fct_unused_sources' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_dag_relationships' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_unused_sources' as 
    varchar
), 
cast('seed.dbt_project_evaluator.dbt_project_evaluator_exceptions' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.fct_root_models' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_dag_relationships' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_root_models' as 
    varchar
), 
cast('seed.dbt_project_evaluator.dbt_project_evaluator_exceptions' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.fct_multiple_sources_joined' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_dag_relationships' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_multiple_sources_joined' as 
    varchar
), 
cast('seed.dbt_project_evaluator.dbt_project_evaluator_exceptions' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.fct_staging_dependent_on_marts_or_intermediate' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_dag_relationships' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_staging_dependent_on_marts_or_intermediate' as 
    varchar
), 
cast('seed.dbt_project_evaluator.dbt_project_evaluator_exceptions' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.fct_staging_dependent_on_staging' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_dag_relationships' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_staging_dependent_on_staging' as 
    varchar
), 
cast('seed.dbt_project_evaluator.dbt_project_evaluator_exceptions' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.fct_marts_or_intermediate_dependent_on_source' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_dag_relationships' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_marts_or_intermediate_dependent_on_source' as 
    varchar
), 
cast('seed.dbt_project_evaluator.dbt_project_evaluator_exceptions' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.fct_model_fanout' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_dag_relationships' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_model_fanout' as 
    varchar
), 
cast('seed.dbt_project_evaluator.dbt_project_evaluator_exceptions' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.fct_source_fanout' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_dag_relationships' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_source_fanout' as 
    varchar
), 
cast('seed.dbt_project_evaluator.dbt_project_evaluator_exceptions' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.fct_exposure_parents_materializations' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_dag_relationships' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_exposure_parents_materializations' as 
    varchar
), 
cast('seed.dbt_project_evaluator.dbt_project_evaluator_exceptions' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.fct_chained_views_dependencies' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_dag_relationships' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_chained_views_dependencies' as 
    varchar
), 
cast('seed.dbt_project_evaluator.dbt_project_evaluator_exceptions' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.fct_undocumented_models' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_graph_resources' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_undocumented_models' as 
    varchar
), 
cast('seed.dbt_project_evaluator.dbt_project_evaluator_exceptions' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.fct_documentation_coverage' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_graph_resources' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.fct_test_directories' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_graph_resources' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_test_directories' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_direct_relationships' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_test_directories' as 
    varchar
), 
cast('seed.dbt_project_evaluator.dbt_project_evaluator_exceptions' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.fct_model_naming_conventions' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_graph_resources' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_model_naming_conventions' as 
    varchar
), 
cast('model.dbt_project_evaluator.stg_naming_convention_prefixes' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_model_naming_conventions' as 
    varchar
), 
cast('seed.dbt_project_evaluator.dbt_project_evaluator_exceptions' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.fct_source_directories' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_graph_resources' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_source_directories' as 
    varchar
), 
cast('seed.dbt_project_evaluator.dbt_project_evaluator_exceptions' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.fct_model_directories' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_graph_resources' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_model_directories' as 
    varchar
), 
cast('model.dbt_project_evaluator.stg_naming_convention_folders' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_model_directories' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_dag_relationships' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_model_directories' as 
    varchar
), 
cast('seed.dbt_project_evaluator.dbt_project_evaluator_exceptions' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.int_all_dag_relationships' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_direct_relationships' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.int_all_graph_resources' as 
    varchar
), 
cast('model.dbt_project_evaluator.stg_nodes' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.int_all_graph_resources' as 
    varchar
), 
cast('model.dbt_project_evaluator.stg_exposures' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.int_all_graph_resources' as 
    varchar
), 
cast('model.dbt_project_evaluator.stg_metrics' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.int_all_graph_resources' as 
    varchar
), 
cast('model.dbt_project_evaluator.stg_sources' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.int_all_graph_resources' as 
    varchar
), 
cast('model.dbt_project_evaluator.stg_naming_convention_prefixes' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.int_all_graph_resources' as 
    varchar
), 
cast('model.dbt_project_evaluator.stg_naming_convention_folders' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.int_direct_relationships' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_graph_resources' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.int_direct_relationships' as 
    varchar
), 
cast('model.dbt_project_evaluator.stg_node_relationships' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.int_direct_relationships' as 
    varchar
), 
cast('model.dbt_project_evaluator.stg_exposure_relationships' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.int_direct_relationships' as 
    varchar
), 
cast('model.dbt_project_evaluator.stg_metric_relationships' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.fct_missing_primary_key_tests' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_model_test_summary' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.fct_missing_primary_key_tests' as 
    varchar
), 
cast('seed.dbt_project_evaluator.dbt_project_evaluator_exceptions' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.fct_test_coverage' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_model_test_summary' as 
    varchar
), 
True), 

(cast('model.dbt_project_evaluator.int_model_test_summary' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_all_graph_resources' as 
    varchar
), 
False), 

(cast('model.dbt_project_evaluator.int_model_test_summary' as 
    varchar
), 
cast('model.dbt_project_evaluator.int_direct_relationships' as 
    varchar
), 
True), 

(cast('seed.dbt_project_evaluator.dbt_project_evaluator_exceptions' as 
    varchar
), 
cast(NULL as 
    varchar
), 
FALSE), 

(cast('model.metrics.dbt_metrics_default_calendar' as 
    varchar
), 
cast(NULL as 
    varchar
), 
FALSE), 

(cast('test.ramiz_snowflake_github_demo.not_null_stg_passing_stats_season_year.301940d11e' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_passing_stats' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_stg_passing_stats_player_name.7bff922195' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_passing_stats' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.dbt_expectations_expect_column_to_exist_stg_passing_stats_player_name.8bcdbf1a29' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_passing_stats' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_stg_passing_stats_age.46d941dccd' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_passing_stats' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.unique_stg_account_usage_query_id.71d00a54e5' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_account_usage' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_stg_account_usage_query_id.757a2d3718' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_account_usage' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_stg_account_usage_query_text.bb812a6429' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_account_usage' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.unique_stg_tpch_customers_customer_key.7f1a18b1a4' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_customers' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_stg_tpch_customers_customer_key.a10e15535a' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_customers' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.unique_stg_tpch_line_items_order_item_key.c819d91e0a' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_line_items' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_stg_tpch_line_items_order_item_key.cd47c7a679' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_line_items' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.unique_stg_tpch_nations_nation_key.9e3675553d' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_nations' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_stg_tpch_nations_nation_key.d0c2fe32ed' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_nations' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.unique_stg_tpch_orders_order_key.bd29f13cc9' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_orders' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_stg_tpch_orders_order_key.bb22e75ae8' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_orders' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.unique_stg_tpch_part_suppliers_part_supplier_key.96ab01c1ae' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_part_suppliers' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_stg_tpch_part_suppliers_part_supplier_key.3cc6ccee2e' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_part_suppliers' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.unique_stg_tpch_parts_part_key.afbc7ad489' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_parts' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_stg_tpch_parts_part_key.cc8e610420' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_parts' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.unique_stg_tpch_regions_region_key.b2bd891bb5' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_regions' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_stg_tpch_regions_region_key.869fa0b326' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_regions' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.unique_stg_tpch_suppliers_supplier_key.6215308464' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_suppliers' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_stg_tpch_suppliers_supplier_key.97c31a786d' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.stg_tpch_suppliers' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.unique_materialization_incremental_customer_key.325783f327' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.materialization_incremental' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_materialization_incremental_customer_key.e2b95d8009' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.materialization_incremental' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.unique_use_variables_order_item_key.fb5576fe0e' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.use_variables' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_use_variables_order_item_key.c2bd602686' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.use_variables' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.unique_dim_customers_customer_key.ad8156656e' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.dim_customers' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_dim_customers_customer_key.4bebfb3411' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.dim_customers' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.accepted_values_dim_customers_region__AFRICA__MIDDLE_EAST__ASIA__EUROPE__AMERICA.dad4601b69' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.dim_customers' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.unique_dim_parts_part_key.712df18d58' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.dim_parts' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_dim_parts_part_key.4358f880d9' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.dim_parts' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.unique_dim_suppliers_supplier_key.58fc3e4770' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.dim_suppliers' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_dim_suppliers_supplier_key.4315350956' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.dim_suppliers' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.unique_fct_order_items_order_item_key.4d6426a255' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.fct_order_items' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_fct_order_items_order_item_key.47516a6371' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.fct_order_items' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.unique_fct_orders_order_key.f5e7a90273' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.fct_orders' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_fct_orders_order_key.6a6f83ab15' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.fct_orders' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.relationships_fct_orders_customer_key__customer_key__ref_dim_customers_.018eb0a60b' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.dim_customers' as 
    varchar
), 
False), 

(cast('test.ramiz_snowflake_github_demo.relationships_fct_orders_customer_key__customer_key__ref_dim_customers_.018eb0a60b' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.fct_orders' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.unique_order_items_order_item_key.43a40b2837' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.order_items' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_order_items_order_item_key.44b9fa7311' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.order_items' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.unique_part_suppliers_part_supplier_key.909477afa8' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.part_suppliers' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.not_null_part_suppliers_part_supplier_key.b8b2022ed3' as 
    varchar
), 
cast('model.ramiz_snowflake_github_demo.part_suppliers' as 
    varchar
), 
True), 

(cast('test.dbt_project_evaluator.is_empty_fct_direct_join_to_source_.2ec67ec028' as 
    varchar
), 
cast('model.dbt_project_evaluator.fct_direct_join_to_source' as 
    varchar
), 
True), 

(cast('test.dbt_project_evaluator.is_empty_fct_marts_or_intermediate_dependent_on_source_.c0abd5f00f' as 
    varchar
), 
cast('model.dbt_project_evaluator.fct_marts_or_intermediate_dependent_on_source' as 
    varchar
), 
True), 

(cast('test.dbt_project_evaluator.is_empty_fct_model_fanout_.a3ef403a95' as 
    varchar
), 
cast('model.dbt_project_evaluator.fct_model_fanout' as 
    varchar
), 
True), 

(cast('test.dbt_project_evaluator.is_empty_fct_multiple_sources_joined_.494f431817' as 
    varchar
), 
cast('model.dbt_project_evaluator.fct_multiple_sources_joined' as 
    varchar
), 
True), 

(cast('test.dbt_project_evaluator.is_empty_fct_rejoining_of_upstream_concepts_.c6b3625c7d' as 
    varchar
), 
cast('model.dbt_project_evaluator.fct_rejoining_of_upstream_concepts' as 
    varchar
), 
True), 

(cast('test.dbt_project_evaluator.is_empty_fct_root_models_.ccb5a490f1' as 
    varchar
), 
cast('model.dbt_project_evaluator.fct_root_models' as 
    varchar
), 
True), 

(cast('test.dbt_project_evaluator.is_empty_fct_source_fanout_.45762bb722' as 
    varchar
), 
cast('model.dbt_project_evaluator.fct_source_fanout' as 
    varchar
), 
True), 

(cast('test.dbt_project_evaluator.is_empty_fct_staging_dependent_on_marts_or_intermediate_.3aa45af51f' as 
    varchar
), 
cast('model.dbt_project_evaluator.fct_staging_dependent_on_marts_or_intermediate' as 
    varchar
), 
True), 

(cast('test.dbt_project_evaluator.is_empty_fct_staging_dependent_on_staging_.bea47be3ca' as 
    varchar
), 
cast('model.dbt_project_evaluator.fct_staging_dependent_on_staging' as 
    varchar
), 
True), 

(cast('test.dbt_project_evaluator.is_empty_fct_unused_sources_.41456b9da8' as 
    varchar
), 
cast('model.dbt_project_evaluator.fct_unused_sources' as 
    varchar
), 
True), 

(cast('test.dbt_project_evaluator.is_empty_fct_exposure_parents_materializations_.5a21592422' as 
    varchar
), 
cast('model.dbt_project_evaluator.fct_exposure_parents_materializations' as 
    varchar
), 
True), 

(cast('test.dbt_project_evaluator.dbt_utils_accepted_range_fct_chained_views_dependencies_distance__False___var_chained_views_threshold_.f54ef16663' as 
    varchar
), 
cast('model.dbt_project_evaluator.fct_chained_views_dependencies' as 
    varchar
), 
True), 

(cast('test.dbt_project_evaluator.dbt_utils_accepted_range_fct_documentation_coverage_documentation_coverage_pct___var_documentation_coverage_target_.31ca75dbaa' as 
    varchar
), 
cast('model.dbt_project_evaluator.fct_documentation_coverage' as 
    varchar
), 
True), 

(cast('test.dbt_project_evaluator.is_empty_fct_undocumented_models_.7c2f43109c' as 
    varchar
), 
cast('model.dbt_project_evaluator.fct_undocumented_models' as 
    varchar
), 
True), 

(cast('test.dbt_project_evaluator.is_empty_fct_model_directories_.50098500db' as 
    varchar
), 
cast('model.dbt_project_evaluator.fct_model_directories' as 
    varchar
), 
True), 

(cast('test.dbt_project_evaluator.is_empty_fct_model_naming_conventions_.a79bc0fbe2' as 
    varchar
), 
cast('model.dbt_project_evaluator.fct_model_naming_conventions' as 
    varchar
), 
True), 

(cast('test.dbt_project_evaluator.is_empty_fct_source_directories_.3ec42bc19c' as 
    varchar
), 
cast('model.dbt_project_evaluator.fct_source_directories' as 
    varchar
), 
True), 

(cast('test.dbt_project_evaluator.is_empty_fct_test_directories_.1c1db93433' as 
    varchar
), 
cast('model.dbt_project_evaluator.fct_test_directories' as 
    varchar
), 
True), 

(cast('test.dbt_project_evaluator.dbt_utils_accepted_range_fct_test_coverage_test_coverage_pct___var_test_coverage_target_.09c9579c9e' as 
    varchar
), 
cast('model.dbt_project_evaluator.fct_test_coverage' as 
    varchar
), 
True), 

(cast('test.dbt_project_evaluator.is_empty_fct_missing_primary_key_tests_.4d10d48da0' as 
    varchar
), 
cast('model.dbt_project_evaluator.fct_missing_primary_key_tests' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.source_unique_tpch_orders_o_orderkey.374f048af2' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.orders' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.source_not_null_tpch_orders_o_orderkey.ebd571817b' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.orders' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.source_relationships_tpch_orders_o_custkey__c_custkey__source_tpch_customer_.024e40ec67' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.customer' as 
    varchar
), 
False), 

(cast('test.ramiz_snowflake_github_demo.source_relationships_tpch_orders_o_custkey__c_custkey__source_tpch_customer_.024e40ec67' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.orders' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.source_unique_tpch_customer_c_custkey.048e97fc25' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.customer' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.source_not_null_tpch_customer_c_custkey.a95b6298b5' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.customer' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.source_relationships_tpch_lineitem_l_orderkey__o_orderkey__source_tpch_orders_.f722cb898d' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.orders' as 
    varchar
), 
False), 

(cast('test.ramiz_snowflake_github_demo.source_relationships_tpch_lineitem_l_orderkey__o_orderkey__source_tpch_orders_.f722cb898d' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.lineitem' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.source_relationships_tpch_lineitem_l_partkey__p_partkey__source_tpch_part_.b761c77df8' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.part' as 
    varchar
), 
False), 

(cast('test.ramiz_snowflake_github_demo.source_relationships_tpch_lineitem_l_partkey__p_partkey__source_tpch_part_.b761c77df8' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.lineitem' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.source_relationships_tpch_lineitem_l_suppkey__s_suppkey__source_tpch_supplier_.f872fb81a2' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.supplier' as 
    varchar
), 
False), 

(cast('test.ramiz_snowflake_github_demo.source_relationships_tpch_lineitem_l_suppkey__s_suppkey__source_tpch_supplier_.f872fb81a2' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.lineitem' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.source_unique_tpch_nation_n_nationkey.3bd4153064' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.nation' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.source_not_null_tpch_nation_n_nationkey.5ac5d27298' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.nation' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.source_relationships_tpch_nation_n_regionkey__r_regionkey__source_tpch_region_.116e1ee3da' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.region' as 
    varchar
), 
False), 

(cast('test.ramiz_snowflake_github_demo.source_relationships_tpch_nation_n_regionkey__r_regionkey__source_tpch_region_.116e1ee3da' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.nation' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.source_unique_tpch_part_p_partkey.30b171988e' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.part' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.source_not_null_tpch_part_p_partkey.9543847190' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.part' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.source_relationships_tpch_partsupp_ps_partkey__p_partkey__source_tpch_part_.511196222f' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.part' as 
    varchar
), 
False), 

(cast('test.ramiz_snowflake_github_demo.source_relationships_tpch_partsupp_ps_partkey__p_partkey__source_tpch_part_.511196222f' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.partsupp' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.source_relationships_tpch_partsupp_ps_suppkey__s_suppkey__source_tpch_supplier_.1c7ef0743e' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.supplier' as 
    varchar
), 
False), 

(cast('test.ramiz_snowflake_github_demo.source_relationships_tpch_partsupp_ps_suppkey__s_suppkey__source_tpch_supplier_.1c7ef0743e' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.partsupp' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.source_unique_tpch_region_r_regionkey.d8eeced103' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.region' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.source_not_null_tpch_region_r_regionkey.8f6ee68076' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.region' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.source_unique_tpch_supplier_s_suppkey.1a36cf4370' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.supplier' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.source_not_null_tpch_supplier_s_suppkey.94660e6dab' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.supplier' as 
    varchar
), 
True), 

(cast('test.ramiz_snowflake_github_demo.source_relationships_tpch_supplier_s_nationkey__n_nationkey__source_tpch_nation_.2a47ee53da' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.nation' as 
    varchar
), 
False), 

(cast('test.ramiz_snowflake_github_demo.source_relationships_tpch_supplier_s_nationkey__n_nationkey__source_tpch_nation_.2a47ee53da' as 
    varchar
), 
cast('source.ramiz_snowflake_github_demo.tpch.supplier' as 
    varchar
), 
True) 
                ) as t (resource_id, 
direct_parent_id, 
is_primary_relationship)

        )

        select * from cte



),


final as (
    select 
        md5(cast(coalesce(cast(resource_id as 
    varchar
), '') || '-' || coalesce(cast(direct_parent_id as 
    varchar
), '') as 
    varchar
)) as unique_id, 
        *
    from relationships
)

select distinct * from final
        );
      
  