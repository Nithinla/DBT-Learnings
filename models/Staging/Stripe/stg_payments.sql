select 
  orderid as order_id,
  paymentmethod as payment_method,
  status as status,
  --round(amount/100) as dollar_amount,
  {{ cents_to_dollars(decimal_values= 3, amount_column = 'amount')}} as dollar_amount,
  created as created
from 
{{ source('stripe_payment','payment') }}