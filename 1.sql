CREATE TABLE product
(
    product_id serial primary key,
    product_name varchar(30) not null,
    product_price money
)

CREATE TABLE client
(
    client_id serial primary key,
    client_name varchar(30) not null,
    client_adress varchar(30) not null,
    client_phone varchar(30) not null
)

CREATE TABLE order1
(
    order_id serial primary key,
    order_number varchar(30) not null,
    order_date varchar(30) not null,
    product_id serial not null,
    client_id serial not null,
    foreign key (product_id) references product (product_id),
    foreign key (client_id) references client (client_id)
)
