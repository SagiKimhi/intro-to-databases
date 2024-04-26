drop schema if exists jobs_db;

create schema jobs_db;

use jobs_db;

create table if not exists applicant
(
    applicant_id     int         not null,
    applicant_name   int         not null,
    phone            int         not null,
    email            varchar(45) not null,
    year_of_birth    date        not null,
    python_knowledge int         not null,
    sql_knowledge    int         not null,

    primary key (applicant_id)
);

create table if not exists company
(
    company_id   int         not null,
    company_name varchar(45) not null,
    email        varchar(45) not null,
    city         varchar(45) not null,
    street       varchar(45) not null,

    primary key (company_id)
);

create table if not exists job
(
    job_id                    int         not null,
    job_name                  varchar(45) not null,
    company_id                int         not null,
    recruiter_id              int         not null,
    required_python_knowledge int         not null,
    required_sql_knowledge    int         not null,

    index job_id (job_name, company_id, recruiter_id),
    foreign key (company_id) references company (company_id),
    foreign key (recruiter_id) references recruiter (recruiter_id)
);

create table if not exists job_application
(
    job_id             int  not null,
    applicant_id       int  not null,
    publication_id     int  not null,
    application_status varchar(45),
    submission_date    date not null,

    index job_application_id (job_id, applicant_id, publication_id),
    foreign key (job_id) references job (job_id),
    foreign key (applicant_id) references applicant (applicant_id)
);

create table if not exists job_publication_platform
(
    platform_id   int         not null,
    platform_name varchar(45) not null,

    primary key (platform_id)
);

create table if not exists recruiter
(
    recruiter_id   int         not null,
    recruiter_name varchar(45) not null,
    phone          int         not null,
    email          varchar(45) not null,
    year_of_birth  date        not null,

    primary key (recruiter_id)
);

create table if not exists recruiter_for_company
(
    recruiter_id int not null,
    company_id   int not null,

    primary key (recruiter_id, company_id),
    foreign key (recruiter_id) references recruiter (recruiter_id),
    foreign key (company_id) references company (company_id)
);
