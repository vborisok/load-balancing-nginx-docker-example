from flask import Flask
import time
import os

app = Flask(__name__)

@app.route("/")
def hello():
    if os.environ['SLEEP'] == 'true':
        time.sleep(1)
    return getResponse()

@app.route("/sleep")
def sleep():
    time.sleep(int(os.environ['APP_NUMBER']) / 2.)
    return getResponse()

def getResponse():
    return {
        "app_number": os.environ['APP_NUMBER']
    }
