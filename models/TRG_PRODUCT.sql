{{ config(materialized="incremental", unique_key="SRC_PRODUCT_ID") }}

select *
from dev.src_product
{% if is_incremental() %}

    where 
          updated_at > (select max(updated_at ) from {{this}})
{% endif %}
