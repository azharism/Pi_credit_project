from flask import Flask, jsonify
import os
import psycopg2

app = Flask(__name__)

@app.route('/')
def root():
    return "Hello from Tokyo webapp!"

@app.route('/health')
def health():
    return jsonify(status='ok')

@app.route('/db')
def db():
    host = os.environ.get('DB_HOST')
    user = os.environ.get('DB_USER', 'dbuser')
    password = os.environ.get('DB_PASS', '')
    dbname = os.environ.get('DB_NAME', 'appdb')
    try:
        conn = psycopg2.connect(host=host, user=user, password=password, dbname=dbname, connect_timeout=5)
        cur = conn.cursor()
        cur.execute('SELECT now()')
        row = cur.fetchone()
        cur.close()
        conn.close()
        return jsonify(db_time=str(row[0]))
    except Exception as e:
        return jsonify(error=str(e)), 500

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=int(os.environ.get('PORT', 8080)))