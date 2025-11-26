from flask import Flask

app = Flask(__name__)

@app.route("/a")
def a():
    return "This is from : API A"

@app.route("/b")
def b():
    return "This is from : API B"

@app.route("/c")
def c():
    return "this is from : API C"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)