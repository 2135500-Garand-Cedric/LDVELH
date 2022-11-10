import mysql.connector as mysql

db_config = {
    'host' : 'localhost',
    'user' : 'root',
    'password' : '',
    'database' : 'LDVELH'
}

# Sélectionne le nom, la classe et le score d'un citoyen selon son id
def getCitoyen(id):
    """
    Sélectionne un citoyen
    Arguments:
        id: le id du citoyen (integer)
    Returns:
        Un tuple avec le nom, la classe et le score d'un citoyen
    """

    query = """
        select concat(c.prenom, ' ', c.nom) as nom,
        cl.titre as classe,
        calcul_credit(c.id) as score
        from citoyen c
            inner join classe cl on cl.id = c.classe_id 
        where c.id = %(citoyen_id)s;
    """
    parametres = {
        'citoyen_id' : id
        }
    result = ()
    try:
        connection = mysql.connect(**db_config)
        cursor = connection.cursor()
        cursor.execute(query, parametres)
        result = cursor.fetchone()
    except mysql.Error as erreur:
        print(erreur)
    finally:
        cursor.close() 
        connection.close()

    return result