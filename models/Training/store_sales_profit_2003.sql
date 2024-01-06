with store_final as
(select * 
from {{('store_tbl_2003')}}
),
store_sales_final as 
(select * 
from {{('store_sales_tbl_2003')}}
),
final_sales_profit as 
(select s_store_name,s_country,sum(ss_sales_price),sum(ss_net_profit) from store_final,store_sales_final
where s_store_sk = ss_store_sk group by 1,2)
select * from final_sales_profit 
