select 
  orderid as order_id,
  paymentmethod as payment_method,
  status as status,
  round(amount/100) as dollar_amount,
  created as created
from 
{{ source('stripe_payment','payment') }}