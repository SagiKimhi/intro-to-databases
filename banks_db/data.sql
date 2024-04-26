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

use banks_db;

INSERT INTO Branch 
    (branch_name, branch_city, branch_assets)
VALUES 
    ('New York', 'New York City', '5000000'),
    ('Las Vegas', 'Las Vegas City', '3000000'),
    ('Florida', 'Florida City', '4000000');

INSERT INTO Customer 
    (customer_name, customer_street, customer_city)
VALUES 
    ('John Doe', '123 Main St', 'New York'),
    ('Jane Smith', '456 Pine St', 'Las Vegas'),
    ('Bob Johnson', '789 Oak St', 'Florida'),
    ('Alice Williams', '321 Elm St', 'New York'),
    ('Charlie Brown', '654 Maple St', 'Las Vegas'),
    ('David Davis', '987 Birch St', 'Florida'),
    ('Eve Evans', '123 Spruce St', 'New York'),
    ('Frank Franklin', '456 Cedar St', 'Las Vegas'),
    ('Grace Green', '789 Pine St', 'Florida'),
    ('Hank Hill', '321 Oak St', 'New York');

INSERT INTO Account 
    (account_id, account_balance, branch_name)
VALUES 
    (1, 2500, 'New York'),
    (2, 1500, 'Las Vegas'),
    (3, 3000, 'Florida'),
    (4, 1000, 'New York'),
    (5, 3500, 'Las Vegas'),
    (6, 500, 'Florida'),
    (7, 4000, 'New York'),
    (8, 750, 'Las Vegas'),
    (9, 4500, 'Florida'),
    (10, 200, 'New York');

INSERT INTO Depositor 
    (account_id, customer_name)
VALUES 
    (1, 'John Doe'),
    (2, 'Jane Smith'),
    (3, 'Bob Johnson'),
    (4, 'Alice Williams'),
    (5, 'Charlie Brown'),
    (6, 'David Davis'),
    (7, 'Eve Evans'),
    (8, 'Frank Franklin'),
    (9, 'Grace Green'),
    (10, 'Hank Hill');

INSERT INTO Loan 
    (loan_id, loan_amount, branch_name)
VALUES 
    (1, 1500, 'New York'),
    (2, 2500, 'Las Vegas'),
    (3, 500, 'Florida'),
    (4, 3000, 'New York'),
    (5, 750, 'Las Vegas'),
    (6, 3500, 'Florida'),
    (7, 200, 'New York'),
    (8, 4000, 'Las Vegas'),
    (9, 100, 'Florida'),
    (10, 4500, 'New York');

INSERT INTO Borrower 
    (loan_id, customer_name)
VALUES 
    (1, 'John Doe'),
    (2, 'Jane Smith'),
    (3, 'Bob Johnson'),
    (4, 'Alice Williams'),
    (5, 'Charlie Brown'),
    (6, 'David Davis'),
    (7, 'Eve Evans'),
    (8, 'Frank Franklin'),
    (9, 'Grace Green'),
    (10, 'Hank Hill');

