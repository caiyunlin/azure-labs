import json
import datetime
from flask import (Flask,  request)

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello World! Current time is {}. \n'.format(datetime.datetime.now())

@app.route("/headers",methods=['GET','POST'])
def headers():
    headers = dict(request.headers)
    header_list = []
    for key, value in headers.items():
        header_list.append(f"{key}: {value}")
    return json.dumps({'headers': header_list})