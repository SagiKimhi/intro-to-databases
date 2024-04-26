use health_clinic;

drop table if exists all_data;
drop table if exists children_doctor_data;
drop table if exists question_6_result;

create table if not exists all_data as 
(
    select 
        c.c_id as clinic_id, 
        d.d_id as doctor_id, 
        p.p_id as patient_id,
        c.c_name as clinic_name,
        d.d_name as doctor_name, 
        p.p_name as patient_name,
        a.a_date as appointment_date,
        a.a_cost as appointment_cost,
        c.c_city as clinic_city,
        d.internship as doctor_internship, 
        p.b_date as patient_birth_date
    from 
        doctor as d 
    join 
        clinic  as c 
        on c.c_id = d.c_id
    join 
        appointment as a 
        on a.d_id = d.d_id
    join 
        patient as p 
        on a.p_id = p.p_id
    order by
        clinic_id, doctor_id, patient_id, appointment_date
);


create table if not exists children_data as 
(
    select 
        *
    from 
        all_data
    where 
        doctor_internship = 'Children'
    order by 
        clinic_id, doctor_id, patient_id, appointment_date
);


create table if not exists question_6_result as
(
    select 
        d.*, 
        avg(a.a_cost)
    from 
        doctor as d 
    join 
        appointment as a 
        on a.d_id = d.d_id
    join 
        patient as p 
        on a.p_id = p.p_id
    where 
        d.internship = 'Children'
    group by 
        d.d_id 
    having 
        avg(a.a_cost) > all(
            select 
                avg(a.a_cost)
            from 
                doctor as d
            join 
                appointment as a 
                on a.d_id = d.d_id
            where
                d.internship = 'Children'
        )
);
