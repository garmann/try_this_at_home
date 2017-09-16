from flask import Flask
import json

def read_json(file):
    with open(file) as fh:
        data = json.load(fh)

    return data


app = Flask(__name__)

jsondata = read_json('status-codes.json')

@app.route('/<httpcode>', methods=['GET'])
def httpcode(httpcode):
    for i in jsondata:
        if i['code'] == httpcode:
            return i['code'] + ' ' + i['phrase'], i['code']
    return 'not found', 999
    

if __name__ == "__main__":
    app.run(debug = True, host = '0.0.0.0')
