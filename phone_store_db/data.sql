use phone_store_db;


insert into 
    client(c_id, c_name)
values
    (1, 'Sagi'),
    (2, 'Kety'),
    (3, 'Hili');


insert into 
    repair(c_id, r_date, r_price)
values
    (1, makedate(2020, 1), 50),

    (2, makedate(2020, 1), 50),
    (2, makedate(2021, 1), 75),

    (3, makedate(2020, 1), 50),
    (3, makedate(2021, 1), 75),
    (3, makedate(2021, 2), 75);

