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


@app.route("/user/<name>")
def username(name):
    return f"Hello {name}"


def do_the_login():
    pass


def show_the_login_form():
    pass


with app.test_request_context():
    print(url_for("hello_world"))
    print(url_for("username", name="sagi"))
    print(url_for("username", name="sagi", next="/"))
