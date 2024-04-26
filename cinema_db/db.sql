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
cinema_db;

create schema if not exists
cinema_db;

use cinema_db;

create table if not exists
cinema
(
    c_id int not null,
    c_name varchar(256) not null,
    city varchar(256) not null,

    primary key cinema (c_id)
);

create table if not exists
movie
(
    m_id int not null,
    m_name varchar(256) not null,
    category varchar(256) not null,
    release_date date not null,

    primary key (m_id)
);

create table if not exists 
auditorium
(
    c_id int not null,
    a_name varchar(256) not null,
    num_seats int not null,

    primary key (c_id, a_name),
    foreign key (c_id) references cinema (c_id)
);

create table if not exists 
projection
(
    c_id int not null,
    a_name varchar(256) not null,
    p_date date not null,
    p_hour time not null,
    m_id int not null,
    num_of_viewers int not null,

    primary key (c_id, a_name, p_date, p_hour),
    foreign key (c_id, a_name) references auditorium (c_id, a_name)
);

