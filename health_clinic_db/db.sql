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
health_clinic_db;

create schema 
health_clinic_db;

use health_clinic_db;

create table if not exists
clinic
(
    c_id int not null,
    c_name varchar(64) not null,
    c_city varchar(64) not null,

    primary key (c_id)
);

create table if not exists
doctor
(
    d_id int not null,
    d_name varchar(64) not null,
    internship varchar(64) not null,
    c_id int,

    primary key (d_id)
);

create table if not exists
patient
(
    p_id int not null,
    p_name varchar(64) not null,
    b_date date not null,

    primary key (p_id)
);

create table if not exists
appointment
(
    d_id int not null,
    p_id int not null,
    a_date date not null,
    a_cost int not null,

    primary key (d_id, p_id, a_date),
    foreign key (d_id) references doctor(d_id),
    foreign key (p_id) references patient(p_id)
);

