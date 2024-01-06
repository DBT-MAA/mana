{{ config(materialized='table') }}

with store_tbl_2003 as
(select s_store_sk,s_store_id,s_store_name,s_country from DBT_DB1.DEV.store_2003)
select * from store_tbl_2003 