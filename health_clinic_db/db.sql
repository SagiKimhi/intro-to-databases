drop schema if exists health_clinic;

create schema health_clinic;

use health_clinic;

create table clinic(
    c_id int not null,
    c_name varchar(64) not null,
    c_city varchar(64) not null,

    primary key (c_id)
);

create table doctor(
    d_id int not null,
    d_name varchar(64) not null,
    internship varchar(64) not null,
    c_id int,

    primary key (d_id)
);

create table patient(
    p_id int not null,
    p_name varchar(64) not null,
    b_date date not null,

    primary key (p_id)
);

create table appointment(
    d_id int not null,
    p_id int not null,
    a_date date not null,
    a_cost int not null,

    primary key (d_id, p_id, a_date),
    foreign key (d_id) references doctor(d_id),
    foreign key (p_id) references patient(p_id)
);


insert into clinic (c_id, c_name, c_city)
values
(1, 'Clalit', 'Tel-Aviv'),
(2, 'Meuhedet', 'Ramat-Gan'),
(3, 'Petah-Tikva', 'Petah-Tikva');

insert into patient (p_id, p_name, b_date)
values
(1, 'Sagi', makedate(1999, cast(rand() * 365 as unsigned))),
(2, 'Kety', makedate(1999, cast(rand() * 365 as unsigned))),
(3, 'Hili', makedate(1999, cast(rand() * 365 as unsigned)));

insert into doctor (d_id, d_name, internship, c_id)
values
(1, 'Yotam-Senior', 'Old People', 1),
(2, 'Yotam', 'Women', 2),
(3, 'Yotam-Junior', 'Children', 1),
(4, 'Yotam-Junior-The-2nd', 'Children', 1),
(5, 'Yotam-Junior-The-3rd', 'Children', 2),
(6, 'Yotam-Junior-The-4th', 'Children', 3);

insert into appointment (d_id, p_id, a_date, a_cost)
values
(1, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),

(2, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),

(3, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),

(4, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),

(5, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),

(6, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 1, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),

(1, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),

(2, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),

(3, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),

(4, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),

(5, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),

(6, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 2, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),

(1, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(1, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),

(2, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(2, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),

(3, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(3, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),

(4, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(4, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),

(5, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(5, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),

(6, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned)),
(6, 3, makedate(cast(rand() * 23 as unsigned) + 2000, cast(rand() * 365 as unsigned)), cast(rand() * 150 as unsigned));

