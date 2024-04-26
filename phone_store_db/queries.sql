use phone_store_db;

-- ===============================================================================
-- Drop Tables
-- ===============================================================================

drop table if exists 
client_repairs;

drop table if exists 
question_6_result_1;

drop table if exists 
question_6_result_2;

-- ===============================================================================
-- Create Tables
-- ===============================================================================

create table if not exists 
client_repairs as
(
    select 
        c.c_id as client_id, 
        c.c_name as client_name, 
        r.r_date as repair_date, 
        r.r_price as repair_price 
    from 
        client as c, 
        repair as r 
    where 
        c.c_id = r.c_id;
);

create table if not exists 
question_6_result_1 as
(
    select 
        c.c_id as client_id, 
        c.c_name as client_name, 
        sum(r.r_price) as repair_price_sum_2020 
    from 
        client as c 
    join 
        repair as r 
        on c.c_id = r.c_id 
    where 
        r.r_date between '2020-01-01' and '2020-12-31' 
        and exists (
            select 
                * 
            from 
                repair as r2 
            where 
                r2.r_date between '2021-01-01' and '2021-12-31' 
                and r.c_id = r2.c_id
        ) 
    group by 
        c.c_id, c.c_name;
);

create table if not exists 
question_6_result_2 as
(
    select 
        c.c_id as client_id, 
        c.c_name as client_name, 
        sum(r.r_price) as repair_price_sum_2020 
    from 
        client as c 
    join 
        repair as r 
        on c.c_id = r.c_id 
    join 
        repair as r2 
        on r.c_id = r2.c_id 
    where 
        r.r_date between '2020-01-01' and '2020-12-31' 
        and r2.r_date between '2021-01-01' and '2021-12-31' 
    group by 
        c.c_id, c.c_name
);

