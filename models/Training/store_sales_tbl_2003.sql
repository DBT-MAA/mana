{{ config(materialized='table') }}

 with store_sales_tbl_2003 as
(select ss_store_sk,ss_quantity,ss_sales_price,ss_net_profit from  DBT_DB1.DEV.store_sales_2003)
select * from store_sales_tbl_2003 
