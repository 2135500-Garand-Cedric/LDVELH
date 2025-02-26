import mysql.connector as mysql
# Informations de connection a la bd
db_config = {
    'host' : 'localhost',
    'user' : 'root',
    'password' : 'mysql',
    'database' : 'ldvelh'
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


# Selectionne tous les disciplines kai
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
def getChapitre(no_chapitre, livre_id):
    """
    Sélectionne le no_chapitre et le texte
    Arguments:
        no_chapitre: le numero du chapitre 
        livre_id: l'id du livre
    Returns:
        Un tuple avec le no_chapitre et le texte du chapitre
    """

    query = """
        select no_chapitre, texte from chapitre where no_chapitre = %(no_chapitre)s and livre_id = %(livre_id)s;
    """

    parametres = {
        'no_chapitre' : no_chapitre,
        'livre_id' : livre_id
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
def getChoix(no_chapitre, livre_id):
    """
    Sélectionne le no_chapitre et le chapitre d'apres
    Arguments:
        no_chapitre: le numero du chapitre 
        livre_id: l'id du livre
    Returns:
        Un tuple avec le no_chapitre et les choix pour le prochain chapitre
    """

    query = """
        select no_chapitre_origine, no_chapitre_destination from lien_chapitre
            inner join chapitre on no_chapitre_origine = chapitre.id
            where no_chapitre_origine = %(no_chapitre)s and livre_id = %(livre_id)s;
    """
    parametres = {
        'no_chapitre' : no_chapitre,
        'livre_id' : livre_id
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

# Sélectionne l'id d'une discipline kai en fonction du nom
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

# Sélectionne tous les sauvegardes
def getSauvegardes():
    """
    Sélectionne l'id de la sauvegarde, l'id de la feuille d'aventure, le titre du livre, l'id du chapitre, le no de chapitre,
    le nombre d'or dans la bourse, l'habilete, l'endurance, l'id du livre et les objets_speciaux
    Arguments:
        Aucun
    Returns:
        Un tuple avec l'id de la sauvegarde, l'id du livre, l'id du chapitre et l'id de la feuille d'aventure
    """

    query = """
        select sauvegarde.id, feuille_aventure_id, titre, chapitre.id, no_chapitre, or_bourse, habilete, endurance, livre.id, objets_speciaux from sauvegarde
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
    Supprime une sauvegarde en fonction de l'id de la sauvegarde
    Arguments:
        id: l'id de la sauvegarde
    Returns:
        Aucun
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


def creerFeuilleAventure(habilete, endurance, or_bourse, objets_speciaux):
    """
    Insert une nouvelle ligne avec une nouvelle feuille d'aventure
    Arguments:
        habilete: l'habilete du joueur
        endurance: l'endurance du joueur
        or_bourse: le nombre d'or dans la bourse du joueur
        objets_speciaux: les objets speciaux du joueur
    Returns:
        l'id de la nouvelle feuille_aventure cree
    """

    query = """
        insert into feuille_aventure (habilete, endurance, or_bourse, objets_speciaux) values (%(habilete)s, %(endurance)s, %(or_bourse)s, %(objets_speciaux)s);
    """
    parametres = {
        'habilete' : habilete,
        'endurance' : endurance,
        'or_bourse' : or_bourse,
        'objets_speciaux' : objets_speciaux
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

# Fait un lien entre discipline kai et feuille aventure
def ajouterDisciplinesKai(feuille_aventure_id, discipline_kai_id):
    """
    Insert une nouvelle ligne dans la table feuille_aventure_discipline_kai
    Arguments:
        feuille_aventure_id: l'id de la feuille d'aventure
        discipline_kai_id: l'id de la discipline kai
    Returns:
        Aucun
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

# Fait un lien entre arme et feuille_aventure
def ajouterArme(feuille_aventure_id, arme_id):
    """
    Insert une nouvelle ligne dans la table feuille_aventure_arme
    Arguments:
        feuille_aventure_id: l'id de la feuille d'aventure
        arme_id: l'id de l'arme
    Returns:
        Aucun
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

# Fait un lien entre objets et feuille aventure
def ajouterLiaisonObjet(feuille_aventure_id, objet_id):
    """
    Insert une nouvelle ligne dans la table feuille_aventure_objet
    Arguments:
        feuille_aventure_id: l'id de la feuille d'aventure
        objet_id: l'id de l'objet
    Returns:
        Aucun
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

# Cree une nouvelle sauvegarde avec tous les informations
def creerSauvegarde(livre_id, chapitre_id, feuille_aventure_id):
    """
    Insert une nouvelle ligne dans la table sauvegarde
    Arguments:
        livre_id: l'id du livre
        chapitre_id: le chapitre ou l'utilisateur est rendu
        feuille_aventure_id: l'id de la feuille aventure
    Returns:
        l'id de la sauvegarde
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
        resultat = cursor.lastrowid
    except mysql.Error as erreur:
        print(erreur)
    finally:
        cursor.close() 
        connection.close()
    return resultat

# Update une sauvegarde
def update_sauvegarde(sauvegarde_id, chapitre_id):
    """
    Update une sauvegarde deja cree
    Arguments:
        sauvegarde_id: l'id de la sauvegarde
        chapitre_id: l'id du chapitre
    Returns:
        Aucun
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

# Selectionne l'id du chapitre en fonction de son numero de chapitre
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

# Selectionne les disicplines kai qui ont ete selectionnes dans la creation du personnage
def getDisciplinesKaiSelectionne(id_feuille_aventure):
    """
    Sélectionne les disciplines kai en fonction de l'id de la feuille aventure
    Arguments:
        id_feuille_aventure: l'id de la feuille aventure
    Returns:
        Un tuple avec l'id, le nom et la description des disciplines kai
    """

    query = """
        select discipline_kai.id, nom, description from discipline_kai
            inner join feuille_aventure_discipline_kai on discipline_kai.id = discipline_kai_id
            inner join feuille_aventure on feuille_aventure.id = feuille_aventure_id
            where feuille_aventure.id = %(id_feuille_aventure)s;
    """
    parametres = {
        'id_feuille_aventure' : id_feuille_aventure
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

# Selectionne les armes de la feuille aventure
def getArmesSelectionne(id_feuille_aventure):
    """
    Sélectionne les armes en fonction de l'id de la feuille aventure
    Arguments:
        id_feuille_aventure: l'id de la feuille aventure
    Returns:
        Un tuple avec l'id et le nom des armes
    """

    query = """
        select arme.id, nom from arme
            inner join feuille_aventure_arme on arme.id = arme_id
            inner join feuille_aventure on feuille_aventure.id = feuille_aventure_id
            where feuille_aventure.id = %(id_feuille_aventure)s;
    """
    parametres = {
        'id_feuille_aventure' : id_feuille_aventure
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

# Selectionne tous les armes
def getArmes():
    """
    Sélectionne tous les armes
    Arguments:
        aucun
    Returns:
        Un tuple avec l'id et le nom des armes
    """

    query = """
        select id, nom from arme;
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

# Selectionne les objets qui sont liees a un id de feuille d'aventure
def getObjets(id_feuille_aventure):
    """
    Sélectionne les objets en fonction de l'id de la feuille aventure
    Arguments:
        id_feuille_aventure: l'id de la feuille aventure
    Returns:
        Un tuple avec l'id de liaison, l'id de l'objet, le nom et la description des objets
    """

    query = """
        select feuille_aventure_objet.id, objet.id, nom, description from objet
            inner join feuille_aventure_objet on objet.id = objet_id
            inner join feuille_aventure on feuille_aventure.id = feuille_aventure_id
            where feuille_aventure.id = %(id_feuille_aventure)s;
    """
    parametres = {
        'id_feuille_aventure' : id_feuille_aventure
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


# Supprime un lien entre objet et feuille aventure en fonction de l'id de liaison
def supprimerObjetFeuilleAventure(id_liaison):
    """
    Supprime un lien entre objet et feuille aventure
    Arguments:
        id_liaison: l'id de liaison
    Returns:
        Aucun
    """

    query = """
        delete from feuille_aventure_objet where id = %(id)s;
    """
    parametres = {
        'id' : id_liaison
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

# Ajout un nouvel objet a la table objet
def ajouterObjet(nom, description):
    """
    Insert une nouvelle ligne dans la table objet
    Arguments:
        nom: le nom de l'objet
        description: la description de l'objet
    Returns:
        l'id de l'objet qui vient d'etre cree
    """

    query = """
        insert into objet (nom, description) values (%(nom)s, %(description)s);
    """
    parametres = {
        'nom' : nom,
        'description' : description
        }
    try:
        connection = mysql.connect(**db_config)
        cursor = connection.cursor()
        cursor.execute(query, parametres)
        resultat = cursor.lastrowid
        connection.commit()
    except mysql.Error as erreur:
        print(erreur)
    finally:
        cursor.close() 
        connection.close()
    return resultat

# Selectionne l'id de l'arme en fonction de son nom
def getIdArme(nom):
    """
    Sélectionne l'id de l'arme en fonction de son id
    Arguments:
        nom: le nom de l'arme
    Returns:
        Un tuple avec l'id et le nom de l'arme
    """

    query = """
        select id, nom from arme where nom = %(nom)s;
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

# Update la feuille aventure avec tous les informations necessaires
def updateFeuilleAventure(nb_or, habilete, endurance, objets_speciaux, feuille_aventure_id):
    """
    Update une feuille aventure
    Arguments:
        nb_or: le nombre d'or dans la bourse du joueur
        habilete: l'habilete du joueur
        endurance: l'endurance du joueur
        objets_speciaux: les objets speciaux du joueur
        feuille_aventure_id: l'id de la feuille d'aventure a modifier
    Returns:
        Aucun
    """

    query = """
        update feuille_aventure set or_bourse = %(nb_or)s,
            habilete = %(habilete)s, endurance = %(endurance)s, 
            objets_speciaux = %(objets_speciaux)s
            where id = %(feuille_aventure_id)s;
    """
    parametres = {
        'nb_or' : nb_or,
        'habilete' : habilete,
        'endurance' : endurance,
        'objets_speciaux' : objets_speciaux,
        'feuille_aventure_id' : feuille_aventure_id
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

# Supprime les liens entre arme et feuille aventure id en fonction de l'id de la feuille d'aventure
def supprimerLienArme(id_feuille_aventure):
    """
    Supprime un lien entre arme et feuille aventure
    Arguments:
        id_feuille_aventure : l'id de la feuille aventure
    Returns:
        Aucun
    """

    query = """
        delete from feuille_aventure_arme where feuille_aventure_id = %(id)s;
    """
    parametres = {
        'id' : id_feuille_aventure
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

# Selectionne les informations de la feuille d'aventure avec son id
def getInfoFeuilleAventure(id_feuille_aventure):
    """
    Sélectionne les informations de la feuille d'aventure
    Arguments:
        id_feuille_aventure: l'id de la feuille d'aventure
    Returns:
        Un tuple avec l'id et le nom de l'arme
    """

    query = """
        select habilete, endurance, or_bourse, objets_speciaux from feuille_aventure where id = %(id)s;
    """
    parametres = {
        'id' : id_feuille_aventure
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