create table dim_products (
    product_id varchar(20) primary key,
    product_name varchar(100),
    category varchar(50),
    unit_price numeric(10,2),
    unit_cost numeric(10,2)
);

create table dim_outlets (
    outlet_id varchar(20) primary key,
    outlet_name varchar(100),
    state varchar(50),
    city varchar(50)
);

create table dim_customers (
    customer_id varchar(20) primary key,
    customer_segment varchar(50)
);

create table fact_sales (
    transaction_id varchar(30) primary key,
    transaction_datetime timestamp,
    outlet_id varchar(20),
    customer_id varchar(20),
    product_id varchar(20),
    quantity integer,
    unit_price numeric(10,2),
    unit_cost numeric(10,2),
    discount_rate numeric(5,4),
    gross_sales numeric(12,2),
    discount_amount numeric(12,2),
    net_sales numeric(12,2),
    product_cost numeric(12,2),
    gross_profit numeric(12,2),

    foreign key (outlet_id)
        references dim_outlets(outlet_id),

    foreign key (customer_id)
        references dim_customers(customer_id),

    foreign key (product_id)
        references dim_products(product_id)
);

create table fact_payments (
    transaction_id varchar(30) primary key,
    payment_method varchar(50),
    payment_amount numeric(12,2),

    foreign key (transaction_id)
        references fact_sales(transaction_id)
);