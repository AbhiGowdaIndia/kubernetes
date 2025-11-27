from flask import Flask
import requests

app = Flask(__name__)

@app.route("/")
def backend_home():
    db_response = requests.get("http://db:5002/")
    return f"Backend OK → {db_response.text}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5001)