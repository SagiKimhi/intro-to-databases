use banks_db;

create table if not exists customer_accounts as
(
    select account.*, depositor.customer_name
    from account left join depositor on
        account.account_id = depositor.account_id
);
