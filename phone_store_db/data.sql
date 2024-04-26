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

use phone_store_db;

insert into client
    (c_id, c_name)
values
    (1, 'Sagi'),
    (2, 'Kety'),
    (3, 'Hili');

insert into repair
    (c_id, r_date, r_price)
values
    (1, makedate(2020, 1), 50),
    (2, makedate(2020, 1), 50),
    (2, makedate(2021, 1), 75),
    (3, makedate(2020, 1), 50),
    (3, makedate(2021, 1), 75),
    (3, makedate(2021, 2), 75);

