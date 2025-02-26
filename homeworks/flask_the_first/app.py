from flask import Flask

app = Flask(__name__)

@app.route('/')
# Home route
def index():
    """
    Home page.
    """
    return """
    <html>
    <head>
        <title>Welcome</title>
        <style>
            body { text-align: center; font-family: Arial, sans-serif; }
        </style>
    </head>
    <body>
        <h1>Welcome to Flask I 🧐</h1>
        <br><br>
        <img src='https://miro.medium.com/v2/resize:fit:1200/1*2SLt4V7lti7Qbmpt4ShzDA.jpeg' alt='Flask Meme' width='300'>
        <br>
        <p>Check this out --> <a href='/dev_lol'>here</a>!</p>
    </body>
    </html>
    """

# Page route
@app.route('/dev_lol')
def devLol():
    """
    Page displaying.
    """
    return """
    <html>
    <head>
        <title>Flaskin' Around</title>
        <style>
            body { text-align: center; font-family: Arial, sans-serif; }
        </style>
    </head>
    <body>
        <h1>Flaskin' Around</h1>
        <img src='https://pbs.twimg.com/media/E0srlgkXMAED6Ei.jpg' alt='Flask Meme' width='300'>
        <p><a href='/'>Back to Home</a></p>
    </body>
    </html>
    """

if __name__ == '__main__':
    app.run(debug=True)
