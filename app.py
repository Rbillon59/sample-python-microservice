from flask import Flask, jsonify

app = Flask(__name__)

# Sample data representing basic information
basic_info = {
    "name": "John Doe",
    "age": 30,
    "occupation": "Software Engineer",
    "location": "New York",
}


@app.route('/basic-info', methods=['GET'])
def get_basic_info():
    return jsonify(basic_info)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
