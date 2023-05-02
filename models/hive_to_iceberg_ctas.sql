{{ config(
    
    post_hook =  "ctas_statement(
        'bird_feeder_hive',
        'bird_feeder_iceberg_dbt',
        'bird_feeder_id, feed_type, bird_type', 
        'ORC', 
        'iceberg', 
        'blank'
    )"

) }}

{% set columns = hive_to_iceberg(
    'bird_feeder_hive'
) %}
{% set column_list = columns.column_list %}