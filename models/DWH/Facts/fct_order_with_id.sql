--added the surrogate key using an predefined macro
--used the fecth_latest_data custom macro to fecth the latest 'n' no of days
select 
{{ dbt_utils.surrogate_key(['order_id','CUSTOMER_ID']) }} AS ID,
*
from
{{ ref('stg_orders') }}

{{ fecth_latest_data('ORDER_DATE', 1700) }}