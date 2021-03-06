create view customer_mobile_details as select customer_info.customer_id,
customer_info.customer_name,customer_info.mobile,sales_info.salesid,
sales_info.net_amount,mobile_master.model_name,mobile_master.manufacturer
from customer_info,sales_info,mobile_master
where customer_info.customer_id=sales_info.customer_id
and sales_info.ime_no=mobile_master.ime_no
order by customer_info.customer_id,customer_info.customer_name,sales_info.salesid asc;