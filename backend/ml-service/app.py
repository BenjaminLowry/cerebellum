from flask import Flask
app = Flask(__name__)


@app.route('/hello')
def hello_world():
    return 'Hello from the flask app!\n'


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
