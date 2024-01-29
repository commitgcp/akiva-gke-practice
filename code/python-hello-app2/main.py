from flask import Flask

app = Flask(__name__)

@app.route('/page2')
def hello():
    return '''
    <!DOCTYPE html>
    <html>
    <head>
        <title>Hello Page 2</title>
    </head>
    <body>
        <h1>Hello Page 2</h1>
    </body>
    </html>
    '''

if __name__ == '__main__':
    app.run(debug=False)