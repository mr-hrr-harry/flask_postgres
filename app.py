from flask import Flask
import psycopg2
import os

app = Flask(__name__)

@app.route('/')
def db_connection_status():
    conn = None
    db_url = os.getenv("DB_URL")
    try:
        conn = psycopg2.connect(db_url)
    except:
        pass
    return 'DB Connection successful' if conn else 'DB Connection failed'

if __name__ == '__main__':
    app.run()
