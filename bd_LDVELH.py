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
        Un tuple avec l'id, le titre, le tome et le nom de serie du livre
    """

    query = """
        select id, titre, tome, nom_serie from livre;
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

# Sélectionne l'id d'une discipline kai
def getIdDisciplineKai(nom):
    """
    Sélectionne l'id d'une discipline kai
    Arguments:
        nom: le nom de la discipline
    Returns:
        Un tuple avec l'id et le nom de la discipline
    """

    query = """
        select id, nom from discipline_kai where nom = %(nom)s;
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

# Sélectionne les sauvegardes presentes
def getSauvegardes():
    """
    Sélectionne l'id de la sauvegarde, l'id du livre, l'id du chapitre et l'id de la feuille d'aventure
    Arguments:
        Aucun
    Returns:
        Un tuple avec l'id de la sauvegarde, l'id du livre, l'id du chapitre et l'id de la feuille d'aventure
    """

    query = """
        select sauvegarde.id, feuille_aventure_id, titre, no_chapitre, or_bourse, habilete, endurance from sauvegarde
            inner join livre on livre.id = livre_id
            inner join chapitre on chapitre.id = chapitre_id
            inner join feuille_aventure on feuille_aventure.id = feuille_aventure_id;
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

# Supprime un sauvegarde en fonction de l'id
def deleteSauvegarde(id):
    """
    Supprime une sauvegarde
    Arguments:
        id: l'id de la sauvegarde
    Returns:
        Un tuple avec l'id et le nom de la discipline
    """

    query = """
        delete from sauvegarde where id = %(id)s;
    """
    parametres = {
        'id' : id
        }
    try:
        connection = mysql.connect(**db_config)
        cursor = connection.cursor()
        cursor.execute(query, parametres)
        connection.commit()
    except mysql.Error as erreur:
        print(erreur)
    finally:
        cursor.close() 
        connection.close()


def creerFeuilleAventure(habilete, endurance, or_bourse):
    """
    Insert une nouvelle ligne avec une nouvelle feuille d'aventure
    Arguments:
        l'habilete, l'endurance et le nombre d'or dans la bourse
    Returns:
        l'id de la nouvelle feuille_aventure cree
    """

    query = """
        insert into feuille_aventure (habilete, endurance, or_bourse) values (%(habilete)s, %(endurance)s, %(or_bourse)s);
    """
    parametres = {
        'habilete' : habilete,
        'endurance' : endurance,
        'or_bourse' : or_bourse
        }
    try:
        connection = mysql.connect(**db_config)
        cursor = connection.cursor()
        cursor.execute(query, parametres)
        connection.commit()
        resultat = cursor.lastrowid
    except mysql.Error as erreur:
        print(erreur)
    finally:
        cursor.close() 
        connection.close()

    return resultat

def ajouterDisciplinesKai(feuille_aventure_id, discipline_kai_id):
    """
    Insert une nouvelle ligne dans la table feuille_aventure_discipline_kai
    Arguments:
        l'id de la feuille_aventure et l'id de la discipline kai
    Returns:
        
    """

    query = """
        insert into feuille_aventure_discipline_kai (discipline_kai_id, feuille_aventure_id) values (%(discipline_kai)s, %(feuille_aventure)s);
    """
    parametres = {
        'discipline_kai' : discipline_kai_id,
        'feuille_aventure' : feuille_aventure_id
        }
    try:
        connection = mysql.connect(**db_config)
        cursor = connection.cursor()
        cursor.execute(query, parametres)
        connection.commit()
    except mysql.Error as erreur:
        print(erreur)
    finally:
        cursor.close() 
        connection.close()

def ajouterArme(feuille_aventure_id, arme_id):
    """
    Insert une nouvelle ligne dans la table feuille_aventure_arme
    Arguments:
        l'id de la feuille_aventure et l'id de l'arme
    Returns:
        
    """

    query = """
        insert into feuille_aventure_arme (arme_id, feuille_aventure_id) values (%(arme)s, %(feuille_aventure)s);
    """
    parametres = {
        'arme' : arme_id,
        'feuille_aventure' : feuille_aventure_id
        }
    try:
        connection = mysql.connect(**db_config)
        cursor = connection.cursor()
        cursor.execute(query, parametres)
        connection.commit()
    except mysql.Error as erreur:
        print(erreur)
    finally:
        cursor.close() 
        connection.close()

def ajouterObjet(feuille_aventure_id, objet_id):
    """
    Insert une nouvelle ligne dans la table objet_id
    Arguments:
        l'id de la feuille_aventure et l'id de l'objet
    Returns:
        
    """

    query = """
        insert into feuille_aventure_objet (objet_id, feuille_aventure_id) values (%(objet)s, %(feuille_aventure)s);
    """
    parametres = {
        'objet' : objet_id,
        'feuille_aventure' : feuille_aventure_id
        }
    try:
        connection = mysql.connect(**db_config)
        cursor = connection.cursor()
        cursor.execute(query, parametres)
        connection.commit()
    except mysql.Error as erreur:
        print(erreur)
    finally:
        cursor.close() 
        connection.close()

def creerSauvegarde(livre_id, chapitre_id, feuille_aventure_id):
    """
    Insert une nouvelle ligne dans la table sauvegarde
    Arguments:
        l'id du livre, l'id du chapitre et l'id de la feuille d'aventure
    Returns:
        
    """

    query = """
        insert into sauvegarde (livre_id, chapitre_id, feuille_aventure_id) values (%(livre)s, %(chapitre)s, %(feuille_aventure)s);
    """
    parametres = {
        'livre' : livre_id,
        'chapitre' : chapitre_id,
        'feuille_aventure' : feuille_aventure_id
        }
    try:
        connection = mysql.connect(**db_config)
        cursor = connection.cursor()
        cursor.execute(query, parametres)
        connection.commit()
    except mysql.Error as erreur:
        print(erreur)
    finally:
        cursor.close() 
        connection.close()

def update_sauvegarde(sauvegarde_id, chapitre_id):
    """
    Update une sauvegarde deja cree
    Arguments:
        l'id de la sauvegarde, l'id du livre, l'id du chapitre et l'id de la feuille d'aventure
    Returns:
        
    """

    query = """
        update sauvegarde set chapitre_id = %(chapitre)s where id = %(sauvegarde)s;
    """
    parametres = {
        'chapitre' : chapitre_id,
        'sauvegarde' : sauvegarde_id
        }
    try:
        connection = mysql.connect(**db_config)
        cursor = connection.cursor()
        cursor.execute(query, parametres)
        connection.commit()
    except mysql.Error as erreur:
        print(erreur)
    finally:
        cursor.close() 
        connection.close()

# Sélectionne le nom et la description d'une discipline kai selon le nom
def getIdChapitre(no_chapitre):
    """
    Sélectionne l'id du chapitre en fonction de son numero
    Arguments:
        no_chapitre: le numero du chapitre
    Returns:
        Un tuple avec l'id et le numero du chapitre
    """

    query = """
        select id, no_chapitre from chapitre where no_chapitre = %(no_chapitre)s;
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



