drop schema if exists phone_store_db;

create schema phone_store_db;

use phone_store_db;

create table 
client
(
    c_id int not null,
    c_name varchar(64) not null,

    primary key (c_id)
);

create table 
repair
(
    c_id int not null,
    r_date date not null,
    r_price int not null,

    primary key (c_id, r_date),
    foreign key (c_id) references client (c_id)
);

