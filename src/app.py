from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Welcome to the DevSecOps Pipeline!"

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=5000)