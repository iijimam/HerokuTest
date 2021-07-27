import os
import sys
import requests
from flask import Flask, request, abort,render_template
from io import BytesIO

app = Flask(__name__)

@app.route("/")
def hello_world():
    return render_template('index.html')

if __name__ == "__main__":
    app.run()