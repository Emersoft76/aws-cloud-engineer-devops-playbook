from flask import Flask, jsonify

app = Flask(__name__)


@app.get("/")
def health() -> tuple:
    return jsonify(
        {
            "message": "AWS Cloud Engineer & DevOps Playbook sample microservice",
            "author": "Emerson Maciel, Cloud Architect | AWS",
            "status": "ok",
        }
    ), 200


@app.get("/health")
def healthcheck() -> tuple:
    return jsonify({"status": "healthy"}), 200


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
