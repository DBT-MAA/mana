{{ config(materialized='table') }}

 with store_sales_tbl_2003 as
(select ss_store_sk,ss_quantity,ss_sales_price,ss_net_profit from  {{ source('test_dev', 'Store_Sales_2003')}})
select * from store_sales_tbl_2003 
