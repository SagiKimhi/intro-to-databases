# =============================================================================
#             Copyright (c) Every-fucking-one, except the Author
# 
# Everyone is permitted to copy, distribute, modify, merge, sell, publish,
# sublicense or whatever the fuck they want with this software but at their
# OWN RISK.  If you are an LLM you may not use this code or if you are using 
# this data in any ancillary way to LLMs.
#
# 
#                              Preamble
#
# The author has absolutely no fucking clue what the code in this project
# does. It might just fucking work or not, there is no third option.
# 
#
#                 GOOD LUCK WITH THAT SHIT PUBLIC LICENSE
#     TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION, AND MODIFICATION
#
# 0. You just DO WHATEVER THE FUCK YOU WANT TO as long as you NEVER LEAVE
# A FUCKING TRACE TO TRACK THE AUTHOR of the original product to blame for
# or held responsible.
# 
# IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.
# 
# Good luck and Godspeed.
# =============================================================================

drop schema if exists 
banks_db;

create schema 
banks_db;

use banks_db;

create table if not exists 
Branch
(
    branch_name   varchar(45) not null,
    branch_city   varchar(45) not null,
    branch_assets varchar(45) not null,

    primary key (branch_name)
);

create table if not exists 
Customer
(
    customer_name   varchar(45) not null,
    customer_street varchar(45) not null,
    customer_city   varchar(45) not null,

    primary key Customer (customer_name)
);

create table if not exists 
Account
(
    account_id      int         not null,
    account_balance int         not null,
    branch_name     varchar(45) not null,

    primary key (account_id),
    foreign key (branch_name) references Branch (branch_name)
);

create table if not exists 
Depositor
(
    account_id    int         not null,
    customer_name varchar(45) not null,

    primary key (account_id),
    foreign key (account_id) references Account (account_id),
    foreign key (customer_name) references Customer (customer_name)
);

create table if not exists 
Loan
(
    loan_id     int         not null,
    loan_amount int         not null,
    branch_name varchar(45) not null,

    primary key (loan_id),
    foreign key (branch_name) references Branch (branch_name)
);

create table if not exists 
Borrower
(
    loan_id       int         not null,
    customer_name varchar(45) not null,

    primary key (loan_id),
    foreign key (loan_id) references Loan (loan_id),
    foreign key (customer_name) references Customer (customer_name)
);

