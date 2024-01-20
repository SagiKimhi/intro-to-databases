# Note:
# I am aware it is not safe to receive input like that
# and that escape should be applied initially as a first sanitizer.
# I am not using escape in order to be able to demonstrate
# vulnerabilities and why it is important to always sanitize input.
#
# same goes for password btw, im aware this is super unsafe and
# can be easily seen in the source view of the webpage...

from flask import Flask, url_for, request

app = Flask(__name__)


@app.route("/")
def hello_world():  # put application's code here
    return "<p>Hello World!</p>"


@app.route("/login", methods=["GET", "POST"])
def login():
    if request.method == "POST":
        return do_the_login()
    else:
        return show_the_login_form()


@app.get("/login")
def get_login():
    return show_the_login_form()


@app.post("/login")
def login_post(*args, **kwargs):
    do_the_login("kety")


@app.route("/user/<name>")
def username(name):
    return f"Hello {name}"


def do_the_login():
    username = request.form["username"]
    password = request.form["pswd"]

    if password == "Aa123123":
        return f"<p>Welcome {username}.</p>"
    return show_the_login_form(True)


def show_the_login_form(incorrect=False):
    return f"""
    <form method="post" class="main_form">
        <fieldset class="fieldset_example">
    
            <legend> 
    {
    'Please log in.' 
    if not incorrect
    else 'Incorrect user or password, try again'
    } 
            </legend>
    
            <label class="username_label">
                Username: 
                <input
                    type="text"
                    name="username"
                    value=""
                />
                <br/>
            </label>
    
            <label class="password_label" for="pswd">
                Password:
                <input
                    type="password"
                    name="pswd"
                    value=""
                /> 
                <br/>
            </label>
                
            <label>
                <input
                    type="submit"
                    value="log-in"
                /> <br/>
            </label>

        </fieldset>
    </form>
    """


def run_tests():
    with app.test_request_context():
        print(url_for("hello_world"))
        print(url_for("username", name="sagi"))
        print(url_for("username", name="sagi", next="/"))
