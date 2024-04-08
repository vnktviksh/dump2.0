USE sales;
create table dsai_m_currency(
currency_code varchar(5) primary key not null,
currency_name varchar(30) default " " not null,
created_DT datetime,
created_user varchar(30) default " " not null,
updated_DT datetime,
updated_user varchar(30)
);

create table dsai_m_customer(
customer_ID varchar(20),
customer_name varchar(30),
address varchar(30),
location_code varchar(10),
phone bigint,
email varchar(30),
created_DT datetime,
created_user varchar(30),
updated_DT datetime,
updated_user varchar(30)
);


create table dsai_m_discount(
discount_code varchar(10) primary key not null,
discount_name varchar(30),
created_DT datetime,
created_user varchar(30),
updated_DT datetime,
updated_user varchar(30),
discount_type varchar(30),
discount double
);


create table dsai_m_location(
location_code varchar(5) primary key not null,
location_name varchar(30),
postal_code bigint,
state_code bigint,
created_DT datetime,
created_user varchar(30),
updated_DT datetime,
updated_user varchar(30)
);


create table dsai_m_loyalty_program(
loyalty_program_code varchar(10) primary key not null,
loyalty_program_name varchar(30),
created_DT datetime,
created_user varchar(30),
updated_DT datetime,
updated_user varchar(30)
);

create table dsai_m_product(
product_code varchar(10) primary key not null,
product_group_code varchar(10),
product_name varchar(30),
created_DT datetime,
created_user varchar(30),
updated_DT datetime,
updated_user varchar(30)
);



create table dsai_m_product_group(
product_group_code varchar(10) primary key not null,
product_group_name varchar(30),
created_DT datetime,
created_user varchar(30),
updated_DT datetime,
updated_user varchar(30)
);



create table dsai_m_promotion(
promotion_code varchar(10) primary key not null,
promotion_name varchar(30),
created_DT datetime,
created_user varchar(30),
updated_DT datetime,
updated_user varchar(30)
);



create table dsai_m_sales_period(
sales_period int,
year int,
month int,
quarter int,
date date,
created_DT datetime,
created_user varchar(30),
updated_DT datetime,
updated_user varchar(30)
);



create table dsai_m_unit_price(
product_code varchar(10),
unit_price_code varchar(10) primary key not null,
unit_price double,
measure int,
measure_code varchar(30),
created_DT datetime,
created_user varchar(30),
updated_DT datetime,
updated_user varchar(30)
);



create table dsai_t_sales(
customer_ID varchar(10),
product_code varchar(10),
unit_price_code varchar(10),
location_code varchar(10),
currency_code varchar(5),
unit_of_measure varchar(20),
sales_quantity int,
sales_Date date,
promotion_code varchar(10),
discount_code varchar(10),
loyalty_program_code varchar(10),
history varchar(5),
created_DT datetime,
created_user varchar(30),
updated_DT datetime,
updated_user varchar(30)
);