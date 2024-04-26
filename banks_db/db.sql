# ------------------------------------------------------------------------------
# Schema
# ------------------------------------------------------------------------------

drop schema if exists `banks_db`;

create schema banks_db;

use `banks_db`;

# ------------------------------------------------------------------------------
# Tables
# ------------------------------------------------------------------------------

create table if not exists Branch
(
    branch_name   varchar(45) not null,
    branch_city   varchar(45) not null,
    branch_assets varchar(45) not null,

    primary key (branch_name)
);

create table if not exists Customer
(
    customer_name   varchar(45) not null,
    customer_street varchar(45) not null,
    customer_city   varchar(45) not null,

    primary key Customer (customer_name)
);

create table if not exists Account
(
    account_id      int         not null,
    account_balance int         not null,
    branch_name     varchar(45) not null,

    primary key (account_id),
    foreign key (branch_name) references Branch (branch_name)
);

create table if not exists Depositor
(
    account_id    int         not null,
    customer_name varchar(45) not null,

    primary key (account_id),
    foreign key (account_id) references Account (account_id),
    foreign key (customer_name) references Customer (customer_name)
);

create table if not exists Loan
(
    loan_id     int         not null,
    loan_amount int         not null,
    branch_name varchar(45) not null,

    primary key (loan_id),
    foreign key (branch_name) references Branch (branch_name)
);

create table if not exists Borrower
(
    loan_id       int         not null,
    customer_name varchar(45) not null,

    primary key (loan_id),
    foreign key (loan_id) references Loan (loan_id),
    foreign key (customer_name) references Customer (customer_name)
);

