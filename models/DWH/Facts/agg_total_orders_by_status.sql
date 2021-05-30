{%- set order_status  = 'returned','completed','return_pending','shipped', 'placed' -%}
with ord as(
select * from
{{ ref('stg_orders') }}
),

orders_by_status as(
select
 year(ORDER_DATE) as order_year,
 quarter(ORDER_DATE) as order_quarter,
 {% for ord_status in order_status -%} 

 count(case when status = '{{ord_status}}' then ORDER_ID else NULL end) {{ord_status}}_orders

 {%- if not loop.last -%}
  , 
 {% endif -%} 
{%- endfor %}
from
  ord
 group by 1, 2 
)

select *
from orders_by_status