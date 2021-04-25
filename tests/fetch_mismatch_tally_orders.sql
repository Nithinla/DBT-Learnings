--fetch orders id there is any tally issue after the refunds
select order_id, sum(dollar_amount)
from
{{ ref('stg_payments') }}
group by 1
having sum(dollar_amount) < 0