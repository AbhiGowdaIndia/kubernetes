from flask import Flask
import requests

app = Flask(__name__)

@app.route("/")
def home():
    backend_response = requests.get("http://backend:5001/")
    return f"Frontend OK → {backend_response.text}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)