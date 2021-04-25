{% docs order_status %}
	
One of the following values: 

| status         | definition                                       |
|----------------|--------------------------------------------------|
| placed         | Order `placed`, not yet shipped                    |
| shipped        | Order has been `shipped`, not yet been delivered   |
| completed      | Order has been `received` by customers             |
| return pending | Customer indicated they want to return this item |
| returned       | Item has been returned                           |

{% enddocs %}

{% docs payment_status %}
	
One of the following values: 

| status         | definition                                       |
|----------------|--------------------------------------------------|
| success        | Payment by Customer is _successful_                    |
| fail        | Payment by Customer is _not successful_   |

{% enddocs %}

{% docs table_events %}

This table contains clickstream events from the marketing website.

The events in this table are recorded by [Snowplow](http://github.com/snowplow/snowplow) and piped into the warehouse on an hourly basis. The following pages of the marketing site are tracked:
 - /
 - /about
 - /team
 - /contact-us

{% enddocs %}