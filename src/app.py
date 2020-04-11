from flask import Flask
app = Flask(__name__)


@app.route('/')
def hello():
    return "There is no such thing as real peace! It’s impossible as long as we live in this accursed world!"

if __name__ == '__main__':
    app.run(host="0.0.0.0",port=8080)