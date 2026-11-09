-- total sales revenue
select round(sum(net_sales), 2) as total_revenue 
from fact_sales;

-- total gross profit
select round(sum(gross_profit), 2) as total_profit 
from fact_sales;

-- gross profit margin percentage
select 
    round(sum(gross_profit) * 100.0 / sum(net_sales), 2) as gross_margin_pct
from fact_sales;

-- overall summary stats
select 
    count(*) as total_transactions,
    sum(quantity) as total_items_sold,
    round(sum(net_sales), 2) as total_revenue,
    round(sum(gross_profit), 2) as total_gross_profit,
    round(avg(net_sales), 2) as avg_transaction_value
from fact_sales;

-- revenue by outlet name
select 
    o.outlet_name,
    round(sum(s.net_sales), 2) as revenue
from fact_sales s
join dim_outlets o on s.outlet_id = o.outlet_id
group by o.outlet_name
order by revenue desc;

-- revenue by product category
select 
    p.category,
    round(sum(s.net_sales), 2) as revenue
from fact_sales s
join dim_products p on s.product_id = p.product_id
group by p.category
order by revenue desc;

-- revenue by year
select 
    extract(year from transaction_datetime) as sales_year,
    count(*) as total_transactions,
    round(sum(net_sales), 2) as revenue
from fact_sales
group by extract(year from transaction_datetime)
order by sales_year;

-- revenue month by month
select 
    date_trunc('month', transaction_datetime) as sales_month,
    round(sum(net_sales), 2) as revenue
from fact_sales
group by date_trunc('month', transaction_datetime)
order by sales_month;

-- view recent sample transactions
select transaction_id, transaction_datetime, outlet_id, net_sales
from fact_sales
limit 10;

-- transactions worth more than rm100
select transaction_id, net_sales
from fact_sales
where net_sales > 100
order by net_sales desc
limit 10;

-- sales transactions in the year 2025
select transaction_id, transaction_datetime, net_sales
from fact_sales
where transaction_datetime >= '2025-01-01' 
  and transaction_datetime < '2026-01-01';

-- top 10 best-selling products
select 
    p.product_name,
    p.category,
    sum(s.quantity) as units_sold,
    round(sum(s.net_sales), 2) as revenue
from fact_sales s
join dim_products p on s.product_id = p.product_id
group by p.product_name, p.category
order by revenue desc
limit 10;

-- outlets that generated more than rm100,000
select 
    o.outlet_name,
    round(sum(s.net_sales), 2) as revenue
from fact_sales s
join dim_outlets o on s.outlet_id = o.outlet_id
group by o.outlet_name
having sum(s.net_sales) > 100000
order by revenue desc;