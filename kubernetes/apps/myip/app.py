from flask import Flask, request

app = Flask(__name__)

@app.route("/")
def main():
    #print(request.headers.get('Host'))
    #x-forwarded-for...
    return request.remote_addr

if __name__ == "__main__":
    app.run(debug = True, host = '0.0.0.0')
