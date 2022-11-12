import mysql.connector as mysql

db_config = {
    'host' : 'localhost',
    'user' : 'root',
    'password' : '',
    'database' : 'LDVELH'
}

# Sélectionne les livres
def getLivres():
    """
    Sélectionne les livres
    Arguments:
        pas d'arguments
    Returns:
        Un tuple avec le titre, le tome et le nom de serie du livre
    """

    query = """
        select titre, tome, nom_serie from livre;
    """

    result = ()
    try:
        connection = mysql.connect(**db_config)
        cursor = connection.cursor()
        cursor.execute(query)
        result = cursor.fetchall()
    except mysql.Error as erreur:
        print(erreur)
    finally:
        cursor.close() 
        connection.close()

    return result


# Sélectionne les livres
def getDisciplinesKai():
    """
    Sélectionne les disciplines kai
    Arguments:
        pas d'arguments
    Returns:
        Un tuple avec le nom et la description de la discipline kai
    """

    query = """
        select nom, description from discipline_kai;
    """

    result = ()
    try:
        connection = mysql.connect(**db_config)
        cursor = connection.cursor()
        cursor.execute(query)
        result = cursor.fetchall()
    except mysql.Error as erreur:
        print(erreur)
    finally:
        cursor.close() 
        connection.close()

    return result

# Sélectionne le nom et la description d'une discipline kai selon le nom
def getDescription(nom):
    """
    Sélectionne le nom et la description d'une discipline kai
    Arguments:
        nom: le nom de la discipline kai
    Returns:
        Un tuple avec le nom et la description de la discipline kai
    """

    query = """
        select nom, description from discipline_kai where nom = %(nom)s;
    """
    parametres = {
        'nom' : nom
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

# Sélectionne le texte et le nom du chapitre de l'intro
def getIntro():
    """
    Sélectionne le texte et le nom du chapitre de l'intro
    Arguments:
        aucun
    Returns:
        Un tuple avec le texte et le nom du chapitre d'intro
    """

    query = """
        select no_chapitre, texte from chapitre where id = 1;
    """
    result = ()
    try:
        connection = mysql.connect(**db_config)
        cursor = connection.cursor()
        cursor.execute(query)
        result = cursor.fetchone()
    except mysql.Error as erreur:
        print(erreur)
    finally:
        cursor.close() 
        connection.close()

    return result

# Sélectionne le numero de chapitre et le texte du chapitre
def getChapitre(no_chapitre):
    """
    Sélectionne le no_chapitre et le texte
    Arguments:
        no_chapitre: le numero du chapitre 
    Returns:
        Un tuple avec le no_chapitre et le texte du chapitre
    """

    query = """
        select no_chapitre, texte from chapitre where no_chapitre = %(no_chapitre)s;
    """
    parametres = {
        'no_chapitre' : no_chapitre
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

# Sélectionne tous les choix possibles pour un chapitre
def getChoix(no_chapitre):
    """
    Sélectionne le no_chapitre et le chapitre d'apres
    Arguments:
        no_chapitre: le numero du chapitre 
    Returns:
        Un tuple avec le no_chapitre et les choix pour le prochain chapitre
    """

    query = """
        select no_chapitre_origine, no_chapitre_destination from lien_chapitre where no_chapitre_origine = %(no_chapitre)s;
    """
    parametres = {
        'no_chapitre' : no_chapitre
        }
    result = ()
    try:
        connection = mysql.connect(**db_config)
        cursor = connection.cursor()
        cursor.execute(query, parametres)
        result = cursor.fetchall()
    except mysql.Error as erreur:
        print(erreur)
    finally:
        cursor.close() 
        connection.close()

    return result

