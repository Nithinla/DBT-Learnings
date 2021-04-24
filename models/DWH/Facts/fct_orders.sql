with pay
as(
    select 
        order_id as order_id,
        sum(case when status = 'success' then dollar_amount end) as amount
    from {{ ref('stg_payments') }}
    group by 1
)

select

    ord.order_id as order_id,
    ord.customer_id as customer_id,
    ord.order_date as order_date,
    --pay.status as payment_status,
    pay.amount as amount
from
{{ ref('stg_orders') }} as ord 
left join pay on pay.order_id = ord.order_id