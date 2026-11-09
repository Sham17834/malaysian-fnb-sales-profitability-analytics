select count(*) from dim_products;
select count(*) from dim_outlets;
select count(*) from dim_customers;
select count(*) from fact_sales;
select count(*) from fact_payments;

select * 
from fact_sales 
limit 5;

select count(*) 
from fact_sales 
where transaction_id is null;