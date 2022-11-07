import mysql.connector as mysql

db_config = {
    'host' : 'localhost',
    'user' : 'root',
    'password' : '',
    'database' : 'LDVELH'
}

def get_livres():
    query = """
        select nom