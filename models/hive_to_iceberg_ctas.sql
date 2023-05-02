{{ config(
    
    post_hook =  "ctas_statement(
        'bird_feeder_hive',
        'bird_feeder_iceberg_dbt',
        'bird_feeder_id, feed_type, bird_type', 
        'ORC', 
        'iceberg', 
        's3://yusuf-cattaneo-bootcamp-nov2022/kaggle/blog_posts/bird_feeder_iceberg_dbt/'
    )"

) }}

{% set columns = hive_to_iceberg(
    'bird_feeder_hive'
) %}
{% set column_list = columns.column_list %}