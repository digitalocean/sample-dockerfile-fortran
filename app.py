from flask import Flask
import subprocess

app = Flask(__name__)


@app.route("/")
def hello_world():
        return subprocess.check_output("./HelloWorld")

@app.route("/olde")
def o_world():
        return subprocess.check_output("./OWorld")
