/* Create a pivot table with dynamic columns based on the ship modes that are in the system */



select
    date_part('year', order_date) as order_year,

    sum(case when ship_mode = 'REG AIR' then gross_item_sales_amount end) as "REG_AIR_amount",
    sum(case when ship_mode = 'RAIL' then gross_item_sales_amount end) as "RAIL_amount",
    sum(case when ship_mode = 'SHIP' then gross_item_sales_amount end) as "SHIP_amount",
    sum(case when ship_mode = 'TRUCK' then gross_item_sales_amount end) as "TRUCK_amount",
    sum(case when ship_mode = 'FOB' then gross_item_sales_amount end) as "FOB_amount",
    sum(case when ship_mode = 'MAIL' then gross_item_sales_amount end) as "MAIL_amount",
    sum(case when ship_mode = 'AIR' then gross_item_sales_amount end) as "AIR_amount"
    

from ramiz_bozai_sandbox_dev.dbt_rbozai.fct_order_items
group by 1