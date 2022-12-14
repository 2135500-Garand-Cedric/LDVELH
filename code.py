import sys
from PyQt5.QtWidgets import QApplication, QMainWindow, QMessageBox, QWidget
from PyQt5 import QtCore, QtGui, QtWidgets
import random
# Importer chaque page
from Pages_PY.PageBienvenu import Ui_PageBienvenu
from Pages_PY.PageSauvegarde import Ui_PageSauvegarde
from Pages_PY.PageSelectionLivre import Ui_PageSelectionLivre
from Pages_PY.PageCreationPersonnage1 import Ui_PageCreationPersonnage1
from Pages_PY.PageCreationPersonnage2 import Ui_PageCreationPersonnage2
from Pages_PY.PageCreationPersonnage3 import Ui_PageCreationPersonnage3
from Pages_PY.PageIntro import Ui_PageIntro
from Pages_PY.PageChapitre import Ui_PageChapitre
from Pages_PY.PageQuitter import Ui_PageQuitter
from Pages_PY.PageDescriptionDisciplineKai import Ui_PageDescriptionDisciplineKai
from Pages_PY.PageFeuilleAventure import Ui_PageFeuilleAventure
from Pages_PY.PageAjouterObjet import Ui_PageAjouterObjet
from Pages_PY.PageSupprimerObjet import Ui_PageSupprimerObjet
# Importer les methodes de communication avec la bd
from bd_LDVELH import *

# Cette page permet d'ajouter un objet a la feuille d'aventure
class PageAjouterObjet(QMainWindow, Ui_PageAjouterObjet):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageAjouterObjet, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # Ce bouton permet de retourner a la page feuille aventure
        self.bouton_annuler.clicked.connect(self.retour)
        # Ce bouton permet d'ajouter l'objet
        self.bouton_ajouter.clicked.connect(self.ajouterObjet)
    # Empeche la page d'etre fermee
    def closeEvent(self, event):
        event.ignore()
    # Cette fonction permet de fermer la page actuelle est de revenir a la page feuille aventure
    def retour(self):
        self.hide()
        page_principale.page_feuille_aventure.show()
    # Cette fonction permet d'ajouter un nouvel objet a la feuille d'aventure
    def ajouterObjet(self):
        # Aller chercher le nom et la description de l'objet et effacer les champs texte
        nom = self.champ_texte_nom.text()
        self.champ_texte_nom.clear()
        description = self.champ_texte_description.toPlainText()
        self.champ_texte_description.clear()
        # Si les champs textes ne sont pas vides, on enregistre l'objet dans la bd
        if nom != '' and description != '':
            id_objet = ajouterObjet(nom, description)
            ajouterLiaisonObjet(page_principale.id_feuille_aventure, id_objet)
            page_principale.page_chapitre.afficherObjets()
            page_principale.page_feuille_aventure.bouton_annuler.hide()
        # Retourner a la page feuille aventure
        self.retour()

# Cette page permet de supprimer un objet
class PageSupprimerObjet(QMainWindow, Ui_PageSupprimerObjet):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageSupprimerObjet, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # Ce bouton permet de retourner a la page de la feuille d'aventure
        self.bouton_annuler.clicked.connect(self.retour)
        # Ce bouton permet de supprimer un objet
        self.bouton_supprimer.clicked.connect(
            lambda checked: self.supprimerObjet(self.combobox_objet.currentIndex())
        ) 
    # Empeche la page d'etre fermee
    def closeEvent(self, event):
        event.ignore()
    # Cette fonction permet de fermer la page actuelle et de faire afficher la page feuille aventure
    def retour(self):
        self.hide()
        page_principale.page_feuille_aventure.show()
    # Cette fonction permet de supprimer un objet
    def supprimerObjet(self, index):
        id_liaison = page_principale.page_feuille_aventure.objets[index][0]
        supprimerObjetFeuilleAventure(id_liaison)
        page_principale.page_chapitre.afficherObjets()
        page_principale.page_feuille_aventure.bouton_annuler.hide()
        # Retourner a la page feuille aventure
        self.retour()
        
# Cette page permet d'afficher et de modifier la feuille d'aventure
class PageFeuilleAventure(QMainWindow, Ui_PageFeuilleAventure):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageFeuilleAventure, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # Ce bouton permet de faire afficher la page pour supprimer un objet
        self.bouton_supprimer.clicked.connect(self.afficherPageSupprimerObjet)
        # Ce bouton permet de retourner a la page chapitre
        self.bouton_annuler.clicked.connect(self.retour)
        # Ce bouton permet d'enregistrer les modifications de la feuille d'aventure
        self.bouton_modifier.clicked.connect(self.updateFeuilleAventure)
        # Ce bouton permet de faire afficher la page pour ajouter un objet
        self.bouton_ajouter.clicked.connect(
            lambda checked: page_principale.afficher_fenetre(page_principale.page_ajouter_objet, self)
        )
        # Ce bouton permet de faire afficher la description de la premiere discipline kai
        self.bouton_description_1.clicked.connect(
            lambda checked: self.afficherDescriptionDisciplineKai(0)
        )
        # Ce bouton permet de faire afficher la description de la deuxieme discipline kai
        self.bouton_description_2.clicked.connect(
            lambda checked: self.afficherDescriptionDisciplineKai(1)
        )       
         # Ce bouton permet de faire afficher la description de la troisieme discipline kai
        self.bouton_description_3.clicked.connect(
            lambda checked: self.afficherDescriptionDisciplineKai(2)
        )       
        # Ce bouton permet de faire afficher la description de la quatrieme discipline kai
        self.bouton_description_4.clicked.connect(
            lambda checked: self.afficherDescriptionDisciplineKai(3)
        )
        # Ce bouton permet de faire afficher la description de la cinquieme discipline kai
        self.bouton_description_5.clicked.connect(
            lambda checked: self.afficherDescriptionDisciplineKai(4)
        )
    # Empeche la page d'etre fermee
    def closeEvent(self, event):
        event.ignore()
    # Cette methode permet de retourner a la page de chapitre
    def retour(self):
        self.hide()
        page_principale.page_chapitre.show()
    # Cette methode permet de faire afficher la page permettant de supprimer un objet
    def afficherPageSupprimerObjet(self):
        self.hide()
        page_principale.page_supprimer_objet.show()
        page_principale.page_supprimer_objet.combobox_objet.clear()
        # Lire les infos dans la bd et les afficher dans le combobox
        self.objets = getObjets(page_principale.id_feuille_aventure)
        for objet in self.objets:
            id_liaison, id_objet, nom, description = objet
            page_principale.page_supprimer_objet.combobox_objet.addItem(nom)
    # Cette methode permet de faire afficher la page de description des disciplines kai
    def afficherDescriptionDisciplineKai(self, index):
        self.hide()
        page_principale.page_description_discipline_kai.show()
        # Aller chercher les infos de la discipline kai et l'afficher
        id, nom, description = page_principale.page_chapitre.disciplines_kai[index]
        page_principale.page_description_discipline_kai.nom_discipline_kai.setText(nom)
        page_principale.page_description_discipline_kai.description_discipline_kai.setText(description)
    # Cette fonction permet d'enregistrer les modifications de la feuille aventure
    def updateFeuilleAventure(self):
        # Aller chercher les informations dans la page
        nb_or = int(self.champ_texte_bourse.text())
        endurance = int(self.champ_texte_endurance.text())
        habilete = int(self.champ_texte_habilete.text())
        objets_speciaux = self.cham_texte_objets_speciaux.toPlainText()
        # Updater les informations de base de la feuille aventure
        updateFeuilleAventure(nb_or, habilete, endurance, objets_speciaux, page_principale.id_feuille_aventure)
        # Aller chercher le nom des armes et leur index dans le combobox
        arme1 = self.combobox_arme_1.currentText()
        arme2 = self.combobox_arme_2.currentText()
        index_arme_1 = self.combobox_arme_1.currentIndex()
        index_arme_2 = self.combobox_arme_2.currentIndex()
        modif_arme = True
        # Si l'index est a 0 pour les deux armes --> les armes n'ont pas change donc pas besoin de les update
        if index_arme_1 == 0 and index_arme_2 == 0:
            modif_arme = False
        if modif_arme:
            # Supprime le lien entre les armes et la feuille aventure
            supprimerLienArme(page_principale.id_feuille_aventure)
            # Pour chaque arme, si le nom n'est pas " ", on recree un nouveau lien entre l'arme et la feuille aventure
            if arme1 != " ":
                tuple_arme = getIdArme(arme1)
                id, nom = tuple_arme
                ajouterArme(page_principale.id_feuille_aventure, id)
            if arme2 != " ":
                tuple_arme = getIdArme(arme2)
                id, nom = tuple_arme
                ajouterArme(page_principale.id_feuille_aventure, id)
        self.bouton_annuler.show()
        # Retourner a la page du chapitre
        self.retour()

# Page permettant de visualiser la description d'une discipline kai
class PageDescriptionDisciplineKai(QMainWindow, Ui_PageDescriptionDisciplineKai):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageDescriptionDisciplineKai, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # Ce bouton permet de retourner a la page de selection des disciplines kai ou a la feuille d'aventure
        self.bouton_retour.clicked.connect(self.retour)
    # Empeche la page d'etre fermee
    def closeEvent(self, event):
        event.ignore()
    # Cette methode permet d'afficher la page de selection des disciplines kai et de cacher la page de description
    def retour(self):
        self.hide()
        # Si creation est a true, retourne a la page creation personnage 2 sinon, va a la page feuille aventure
        if page_principale.creation:
            page_principale.page_creation_personnage_2.show()
        else:
            page_principale.page_feuille_aventure.show()

# Page permettant de quitter l'application en sauvegardant ou non
class PageQuitter(QMainWindow, Ui_PageQuitter):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageQuitter, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # Connecter les boutons a un evenement
        # Ce bouton permet de quitter l'application en sauvegardant la progression
        self.bouton_sauvegarder_quitter.clicked.connect(self.sauvegarder_et_quitter)
        # Ce bouton permet de quitter l'application sans sauvegarder la progression
        self.bouton_quitter_sans_sauvegarder.clicked.connect(self.quitter_sans_sauvegarder)
        # Ce bouton permet de continuer la lecture du livre
        self.bouton_continuer.clicked.connect(
            lambda checked: page_principale.afficher_fenetre(page_principale.page_chapitre, self)
        )
    # Empeche la page d'etre fermee
    def closeEvent(self, event):
        event.ignore()
    # Fonction permettant de sauvegarder la progression et ensuite quitter
    def sauvegarder_et_quitter(self):
        chapitre = getIdChapitre(page_principale.chapitre)
        if chapitre is not None:
            id_chapitre, no_chapitre = chapitre
            # Si la partie provient d'une sauvegarde, update la sauvegarde sinon, cree une nouvelle sauvegarde
            if not page_principale.sauvegarde:
                creerSauvegarde(page_principale.id_livre, id_chapitre, page_principale.id_feuille_aventure)
            else:
                update_sauvegarde(page_principale.id_sauvegarde, id_chapitre)
            # Ferme l'application
            sys.exit()
    # Fonction permettant de quitter l'application sans sauvegarder
    def quitter_sans_sauvegarder(self):
        sys.exit()

# Page permettant d'afficher les chapitres du livre
# Offre la possibilite de faire un choix pour continuer l'aventure
# Permet aussi de quitter l'application et de voir la feuille d'aventure
class PageChapitre(QMainWindow, Ui_PageChapitre):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageChapitre, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # Connecter le bouton a un evenement
        # Ce bouton permet d'aller a la page pour quitter l'application
        self.bouton_quitter.clicked.connect(
            lambda checked: page_principale.afficher_fenetre(page_principale.page_quitter, self)
        )
        # Ce bouton permet de choisir l'option 1 comme prochain chapitre
        self.bouton_choix_1.clicked.connect(
            lambda checked: self.afficherProchainChapitre(self.bouton_choix_1.text())
        )
        # Ce bouton permet de choisir l'option 2 comme prochain chapitre
        self.bouton_choix_2.clicked.connect(
            lambda checked: self.afficherProchainChapitre(self.bouton_choix_2.text())
        )
        # Ce bouton permet de choisir l'option 3 comme prochain chapitre
        self.bouton_choix_3.clicked.connect(
            lambda checked: self.afficherProchainChapitre(self.bouton_choix_3.text())
        )
        # Ce bouton permet de choisir l'option 4 comme prochain chapitre
        self.bouton_choix_4.clicked.connect(
            lambda checked: self.afficherProchainChapitre(self.bouton_choix_4.text())
        )
        # Ce bouton permet d'afficher la feuille d'aventure
        self.bouton_feuille_aventure.clicked.connect(self.afficherFeuilleAventure)
    # Empeche la page d'etre fermee
    def closeEvent(self, event):
        event.ignore()
    # Cette fonction permet d'afficher les informations pour la page feuille aventure
    def afficherFeuilleAventure(self):
        # Affiche la feuille aventure et cache la page courante
        self.hide()
        page_principale.page_feuille_aventure.show()
        # Remettre a jour les informations de la feuille aventure
        info_feuille_aventure = getInfoFeuilleAventure(page_principale.id_feuille_aventure)
        habilete, endurance, or_bourse, objets_speciaux = info_feuille_aventure
        page_principale.habilete = habilete
        page_principale.endurance = endurance
        page_principale.nb_or = or_bourse
        page_principale.objets_speciaux = objets_speciaux
        # Afficher les informations de la feuille aventure
        page_principale.page_feuille_aventure.champ_texte_bourse.setText(str(page_principale.nb_or))
        page_principale.page_feuille_aventure.champ_texte_endurance.setText(str(page_principale.endurance))
        page_principale.page_feuille_aventure.champ_texte_habilete.setText(str(page_principale.habilete))
        page_principale.page_feuille_aventure.combobox_arme_1.clear()
        page_principale.page_feuille_aventure.combobox_arme_2.clear()
        # Aller chercher les tous les armes et les armes liees a la feuille aventure
        self.armesSelectionne = getArmesSelectionne(page_principale.id_feuille_aventure)
        armes = getArmes()
        # Si la longueur du tableau des armes selectionne est de 0, le premier item des deux combobox arme est " "
        if len(self.armesSelectionne) == 0:
            page_principale.page_feuille_aventure.combobox_arme_1.addItem(" ")
            page_principale.page_feuille_aventure.combobox_arme_2.addItem(" ")
        # Si la longueur du tableau des armes selectionne est de 1, le premier item d'un combobox est l'arme et l'autre est " "
        elif len(self.armesSelectionne) == 1:
            page_principale.page_feuille_aventure.combobox_arme_1.addItem(self.armesSelectionne[0][1])
            page_principale.page_feuille_aventure.combobox_arme_1.addItem(" ")
            page_principale.page_feuille_aventure.combobox_arme_2.addItem(" ")
        # Sinon dexu armes sont liees a la feuille aventure donc les deux combobox ont une arme en premier
        else:
            page_principale.page_feuille_aventure.combobox_arme_1.addItem(self.armesSelectionne[0][1])
            page_principale.page_feuille_aventure.combobox_arme_2.addItem(self.armesSelectionne[1][1])
            page_principale.page_feuille_aventure.combobox_arme_1.addItem(" ")
            page_principale.page_feuille_aventure.combobox_arme_2.addItem(" ")
        # Ajoute tous les autres armes dans les deux combobox sauf ceux qui sont selectionne
        for arme in armes:
            id, nom = arme
            if len(self.armesSelectionne) >= 1:
                if id != self.armesSelectionne[0][0]:
                    page_principale.page_feuille_aventure.combobox_arme_1.addItem(nom)
            if len(self.armesSelectionne) >= 2:
                if id != self.armesSelectionne[1][0]:
                    page_principale.page_feuille_aventure.combobox_arme_2.addItem(nom)
            else:
                page_principale.page_feuille_aventure.combobox_arme_2.addItem(nom)
        # Affiche les objets et les objets speciaux
        self.afficherObjets()
        page_principale.page_feuille_aventure.cham_texte_objets_speciaux.setPlainText(page_principale.objets_speciaux)

        tableau_disciplines = {}
        nb = 0
        # Va chercher les disciplines kai selectionnes et les affiche sur la feuille aventure
        self.disciplines_kai = getDisciplinesKaiSelectionne(page_principale.id_feuille_aventure)
        for discipline_kai in self.disciplines_kai:
            id, nom, description = discipline_kai
            tableau_disciplines[nb] = nom
            nb += 1
        page_principale.page_feuille_aventure.discipline_kai_1.setText(tableau_disciplines[0])
        page_principale.page_feuille_aventure.discipline_kai_2.setText(tableau_disciplines[1])
        page_principale.page_feuille_aventure.discipline_kai_3.setText(tableau_disciplines[2])
        page_principale.page_feuille_aventure.discipline_kai_4.setText(tableau_disciplines[3])
        page_principale.page_feuille_aventure.discipline_kai_5.setText(tableau_disciplines[4])
    # Cette methode permet de faire afficher les objets
    def afficherObjets(self):
        # Ce tableau 2d contient tous les label de titre et de description des objets
        tableau_objets = [  
            [page_principale.page_feuille_aventure.titre_objet_1, page_principale.page_feuille_aventure.description_objet_1],
            [page_principale.page_feuille_aventure.titre_objet_2, page_principale.page_feuille_aventure.description_objet_2],
            [page_principale.page_feuille_aventure.titre_objet_3, page_principale.page_feuille_aventure.description_objet_3],
            [page_principale.page_feuille_aventure.titre_objet_4, page_principale.page_feuille_aventure.description_objet_4],
            [page_principale.page_feuille_aventure.titre_objet_5, page_principale.page_feuille_aventure.description_objet_5],
            [page_principale.page_feuille_aventure.titre_objet_6, page_principale.page_feuille_aventure.description_objet_6],
            [page_principale.page_feuille_aventure.titre_objet_7, page_principale.page_feuille_aventure.description_objet_7],
            [page_principale.page_feuille_aventure.titre_objet_8, page_principale.page_feuille_aventure.description_objet_8]
        ]
        nb = 0
        # Va chercher les objets et pour le nombre d'objets, affiche le bon nombre de labels dans la page feuille aventure
        objets = getObjets(page_principale.id_feuille_aventure)
        for titre_objet, description_objet in tableau_objets:
            titre_objet.show()
            description_objet.show()
            if nb < len(objets):
                titre_objet.setText(objets[nb][2])
                description_objet.setText(objets[nb][3])
            else:
                titre_objet.hide()
                description_objet.hide()
            nb += 1
    # Affiche le chapitre choisi avec les boutons 
    def afficherProchainChapitre(self, prochain_chapitre):
        choix_chapitre = ""
        nb = 0
        # Permet de connaitre le numero du chapitre choisi
        for lettre in prochain_chapitre:
            if nb > 8:
                choix_chapitre += lettre
            nb += 1
        page_principale.chapitre = int(choix_chapitre)
        tableau_choix = {}
        # Fait les requetes a la bd pour obtenir le texte du chapitre et les choix possibles
        chapitre = getChapitre(page_principale.chapitre, page_principale.id_livre)
        resultat = getChoix(page_principale.chapitre, page_principale.id_livre)
        if chapitre and resultat is not None:
            nb = 0
            titre, texte = chapitre
            # Affiche le titre et le texte du chapitre
            self.titre_chapitre.setText("Chapitre " + titre)
            self.texte_chapitre.setText(texte)
            # Mets les choix possibles dans un tableau
            for choix in resultat:
                no_chapitre_origine, no_chapitre_destination = choix
                tableau_choix[nb] = "Chapitre " + str(no_chapitre_destination)
                nb += 1
            # Cache tous les boutons de choix
            self.bouton_choix_1.hide()
            self.bouton_choix_2.hide()
            self.bouton_choix_3.hide()
            self.bouton_choix_4.hide()
            # Selon la longueur du tableau de choix, affiche le nombre de boutons corrects et leur contenu
            if len(tableau_choix) >= 1:
                self.bouton_choix_1.show()
                self.bouton_choix_1.setText(tableau_choix[0])
                if len(tableau_choix) >= 2:
                    self.bouton_choix_2.show()
                    self.bouton_choix_2.setText(tableau_choix[1])
                    if len(tableau_choix) >= 3:
                        self.bouton_choix_3.show()
                        self.bouton_choix_3.setText(tableau_choix[2])
                        if len(tableau_choix) == 4:
                            self.bouton_choix_4.show()
                            self.bouton_choix_4.setText(tableau_choix[3])

# Page permettant d'afficher le message d'introduction du livre
class PageIntro(QMainWindow, Ui_PageIntro):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageIntro, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # Fait une requete a la bd pout obtenir le titre et le texte de l'intro
        intro = getIntro()
        if intro is not None:
            titre, texte = intro
            # Affiche le titre et le texte de l'intro
            self.titre_intro.setText(titre)
            self.texte_intro.setText(texte)
        # Ce bouton permet de passer au chapitre 1
        self.bouton_continuer.clicked.connect(self.afficherChapitre1)
    # Si la page est fermee, on revient a la page precedente
    def closeEvent(self, event):
        page_principale.page_creation_personnage_2.show()
    # Cette methode permet de creer la feuille d'aventure
    def creerFeuilleAventure(self):
        # Cree la feuille d'aventure avec tous les donnees necessaires
        page_principale.id_feuille_aventure = creerFeuilleAventure(page_principale.habilete, page_principale.endurance, page_principale.nb_or, page_principale.objets_speciaux)
        page_principale.creation = False
        # Fait le lien entre la feuille d'aventure et les 5 disciplines kai
        for i in range(5):
            ajouterDisciplinesKai(page_principale.id_feuille_aventure, page_principale.disciplines_kai[i])
        # Fait le lien entre les armes et la feuille d'aventure
        for arme in page_principale.armes:
            ajouterArme(page_principale.id_feuille_aventure, arme)
        # Fait le lien entre les objets et la feuille d'aventure
        for objet in page_principale.objets:
            if objet != 0:
                ajouterLiaisonObjet(page_principale.id_feuille_aventure, objet)
            
    # Cette fonction permet d'afficher le titre, le texte et les choix du chapitre 1
    def afficherChapitre1(self):
        # Cree la feuille d'aventure
        self.creerFeuilleAventure()
        nb = 0
        tableau_choix = {}
        # Cache cette page et affiche la page de chapitres
        page_principale.page_chapitre.show()
        self.hide()
        # Fait les requetes a la bd pour obtenir le texte du chapitre 1 et les choix possibles
        chapitre = getChapitre(page_principale.chapitre, page_principale.id_livre)
        resultat = getChoix(page_principale.chapitre, page_principale.id_livre)
        if chapitre and resultat is not None:
            titre, texte = chapitre
            #Affiche le titre et le texte du chapitre 1
            page_principale.page_chapitre.titre_chapitre.setText("Chapitre " + titre)
            page_principale.page_chapitre.texte_chapitre.setText(texte)
            # Mets dans un tableau les choix possibles du chapitre 1
            for choix in resultat:
                no_chapitre_origine, no_chapitre_destination = choix
                tableau_choix[nb] = "Chapitre " + str(no_chapitre_destination)
                nb += 1
            # Cache tous les boutons de choix
            page_principale.page_chapitre.bouton_choix_1.hide()
            page_principale.page_chapitre.bouton_choix_2.hide()
            page_principale.page_chapitre.bouton_choix_3.hide()
            page_principale.page_chapitre.bouton_choix_4.hide()
            # Selon la longueur du tableau de choix, affiche le nombre de boutons corrects et leur contenu
            if len(tableau_choix) >= 1:
                page_principale.page_chapitre.bouton_choix_1.show()
                page_principale.page_chapitre.bouton_choix_1.setText(tableau_choix[0])
                if len(tableau_choix) >= 2:
                    page_principale.page_chapitre.bouton_choix_2.show()
                    page_principale.page_chapitre.bouton_choix_2.setText(tableau_choix[1])
                    if len(tableau_choix) >= 3:
                        page_principale.page_chapitre.bouton_choix_3.show()
                        page_principale.page_chapitre.bouton_choix_3.setText(tableau_choix[2])
                        if len(tableau_choix) == 4:
                            page_principale.page_chapitre.bouton_choix_4.show()
                            page_principale.page_chapitre.bouton_choix_4.setText(tableau_choix[3])


# Page permettant de commencer la creation du personnage lors d'une nouvelle partie
# Decouverte de monastere detruit
class PageCreationPersonnage3(QMainWindow, Ui_PageCreationPersonnage3):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageCreationPersonnage3, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # Ce bouton permet de passer a la prochaine page
        self.bouton_continuer.clicked.connect(
            lambda checked: page_principale.afficher_fenetre(page_principale.page_intro, self)
        )
        # Permet de generer qu'une seule fois l'habilete et l'endurence
        self.generation_objet = False
        # Ce bouton permet de generer l'objet de depart
        self.bouton_generer_objet.clicked.connect(self.genererObjet)
    # Cette fonction permet de generer l'objet trouve dans les ruines du monastere
    def genererObjet(self):
        if not self.generation_objet:
            # Genere un nombre aleatoire de 0 a 9
            objet = random.randint(0, 9)
            # Affiche l'objet trouve
            self.label_objet.setText("Objet: " + str(objet))
            # Le joueur obtient un certain objet selon le nombre qui est genere
            match objet:
                case 0:
                    page_principale.armes.add(10)
                case 1:
                    page_principale.armes.add(6)
                case 2:
                    page_principale.objets_speciaux += "Un Casque: il ajoute 2 points d'ENDURANCE à votre total.\n"
                case 3:
                    page_principale.objets[1] = 1
                    page_principale.objets[2] = 1
                case 4:
                    page_principale.objets_speciaux += "Une Cotte de Maille: elle ajoute 4 points d'ENDURANCE à votre total.\n"
                case 5:
                    page_principale.armes.add(3)
                case 6:
                    page_principale.objets[1] = 2
                case 7:
                    page_principale.armes.add(9)
                case 8:
                    page_principale.armes.add(2)
                case 9:
                    page_principale.nb_or += 12
            # Permet de generer un nombre qu'une seule fois
            self.generation_objet = True

# Page permettant de continuer la creation du personnage lors d'une nouvelle partie
# Selection des Disciplines Kai
class PageCreationPersonnage2(QMainWindow, Ui_PageCreationPersonnage2):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageCreationPersonnage2, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        self.combobox_kai_1.addItem("Veuillez Choisir Votre Discipline Kai")
        self.combobox_kai_2.addItem("Veuillez Choisir Votre Discipline Kai")
        self.combobox_kai_3.addItem("Veuillez Choisir Votre Discipline Kai")
        self.combobox_kai_4.addItem("Veuillez Choisir Votre Discipline Kai")
        self.combobox_kai_5.addItem("Veuillez Choisir Votre Discipline Kai")
        # Requete a la bd pour obtenir le nom et la description des disciplines kai
        disciplines_kai = getDisciplinesKai()
        if disciplines_kai is not None:
            # Ajoute dans tous les comboBox le nom des disciplines kai
            for discipline_kai in disciplines_kai:
                nom, description = discipline_kai
                self.combobox_kai_1.addItem(nom)
                self.combobox_kai_2.addItem(nom)
                self.combobox_kai_3.addItem(nom)
                self.combobox_kai_4.addItem(nom)
                self.combobox_kai_5.addItem(nom)
        # Ce bouton permet d'obtenir la description de la discipline kai selectionne dans le premier comboBox
        self.bouton_description_1.clicked.connect(
            lambda checked: self.afficherDescriptionDisciplineKai(
                page_principale.page_description_discipline_kai, self, self.combobox_kai_1.currentText()
            )
        )
        # Ce bouton permet d'obtenir la description de la discipline kai selectionne dans le deuxieme comboBox
        self.bouton_description_2.clicked.connect(
            lambda checked: self.afficherDescriptionDisciplineKai(
                page_principale.page_description_discipline_kai, self, self.combobox_kai_2.currentText()
            )
        )
        # Ce bouton permet d'obtenir la description de la discipline kai selectionne dans le troisieme comboBox
        self.bouton_description_3.clicked.connect(
            lambda checked: self.afficherDescriptionDisciplineKai(
                page_principale.page_description_discipline_kai, self, self.combobox_kai_3.currentText()
            )
        )
        # Ce bouton permet d'obtenir la description de la discipline kai selectionne dans le quatrieme comboBox
        self.bouton_description_4.clicked.connect(
            lambda checked: self.afficherDescriptionDisciplineKai(
                page_principale.page_description_discipline_kai, self, self.combobox_kai_4.currentText()
            )
        )
        # Ce bouton permet d'obtenir la description de la discipline kai selectionne dans le cinquieme comboBox
        self.bouton_description_5.clicked.connect(
            lambda checked: self.afficherDescriptionDisciplineKai(
                page_principale.page_description_discipline_kai, self, self.combobox_kai_5.currentText()
            )
        )
        # Ce bouton permet de continuer a la prochaine page lorsque l'utilisateur a termine de choisir ses disciplines kai
        self.bouton_continuer.clicked.connect(self.verificationDisciplinesKai)
    # Si la page est fermee, on revient a la page precedente    
    def closeEvent(self, event):
        page_principale.page_creation_personnage_1.show()
    # Cette fonction permet d'afficher la description d'une discipline kai choisie
    def afficherDescriptionDisciplineKai(self, fenetre, parent, textComboBox):
        # Affiche la page de description et cache celle presente
        fenetre.show()
        parent.hide()
        # Affiche le nom de la discipline kai
        page_principale.page_description_discipline_kai.nom_discipline_kai.setText(textComboBox)
        # Fait une requete a la bd pour obtenir la description de la discipline kai
        resultat = getDescription(textComboBox)
        if resultat is not None:
            nom, description = resultat
        # Affiche la description de la discipline kai
        page_principale.page_description_discipline_kai.description_discipline_kai.setText(description)
    # Cette fonction permet de verifier les disciplines kai
    def verificationDisciplinesKai(self):
        erreur = False
        nb = 0
        disciplines_kai = [self.combobox_kai_1.currentText(), self.combobox_kai_2.currentText(), self.combobox_kai_3.currentText(), self.combobox_kai_4.currentText(), self.combobox_kai_5.currentText()]
        # Mets erreur a true si le texte de choix est toujours la
        for discipline in disciplines_kai:
            if discipline == "Veuillez Choisir Votre Discipline Kai":
                erreur = True
        # Cree un tableau sans les doules
        myset = set(disciplines_kai)
        # Si la longueur du set est different de la longueur du tableau de disciplines kai
        # Il y a un double dans le tableau
        if len(myset) != len(disciplines_kai):
            erreur = True
        # Si erreur est a true, mets le message d'erreur
        if erreur:
            QMessageBox.about(self, "Erreur", "Vous devez choisir 5 disciplines kai différentes")
        # Si erreur est a false, enregistre les disciplines kai et passe a la prochaine page
        else:
            # Va chercher l'id de la discipline kai en fonction de son nom
            for discipline_kai in disciplines_kai:
                resultat = getIdDisciplineKai(discipline_kai)
                if resultat is not None:
                    id, nom = resultat
                    # Enregistre l'id des 5 disciplines kai dans un tableau
                    page_principale.disciplines_kai[nb] = id
                nb += 1
            # Passe a la prochaine page
            self.hide()
            page_principale.page_creation_personnage_3.show()

# Page permettant de commencer la creation du personnage lors d'une nouvelle partie
# Generation de l'endurance et de l'habilete
class PageCreationPersonnage1(QMainWindow, Ui_PageCreationPersonnage1):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageCreationPersonnage1, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # Ce bouton permet de passer a la prochaine page
        self.bouton_continuer.clicked.connect(
            lambda checked: page_principale.afficher_fenetre(page_principale.page_creation_personnage_2, self)
        )
        # Permet de generer qu'une seule fois l'habilete et l'endurence
        self.generation_habilete = False
        self.generation_endurance = False
        self.generation_or = False
        # Ce bouton permet de generer l'endurance
        self.bouton_generer_endurance.clicked.connect(self.generer_endurance)
        # Ce bouton permet de generer l'habilete
        self.bouton_generer_habilete.clicked.connect(self.generer_habilete)
        # Ce bouton permet de generer le nombre d'or en debut d'aventure
        self.bouton_generer_or.clicked.connect(self.generer_or)
    # Cette fonction permet de generer l'endurance avec un nombre aleatoire de 0 a 9 + 20
    def generer_endurance(self):
        if not self.generation_endurance:
            # Genere un nombre aleatoire de 0 a 9
            endurance = random.randint(0, 9)
            # Affiche l'endurance
            self.label_endurance.setText("Endurance: 20 + " + str(endurance) + " = " + str(endurance+20))
            # Enregistre l'endurance
            page_principale.endurance = endurance + 20
            self.generation_endurance = True
    # Cette fonction permet de generer l'habilete avec un nombre aleatoire de 0 a 9 + 10
    def generer_habilete(self):
        if not self.generation_habilete:
            # Genere un nombre aleatoire de 0 a 9
            habilete = random.randint(0, 9)
            # Affiche l'habilete
            self.label_habilete.setText("Habileté: 10 + " + str(habilete) + " = " + str(habilete+10))
            # Enregistre l'habilete
            page_principale.habilete = habilete + 10
            self.generation_habilete = True
    # Cette fonction permet de generer le nombre d'or en debut de partie avec un nombre aleatoire de 0 a 9
    def generer_or(self):
        if not self.generation_or:
            # Genere un nombre aleatoire de 0 a 9
            nb_or = random.randint(0, 9)
            # Affiche le nombre d'or
            self.label_or.setText("Nombre Pièces D'Or: " + str(nb_or))
            # Enregistre le nombre d'or
            page_principale.nb_or = nb_or
            self.generation_or = True
    # Si la page est fermee, on revient a la page precedente
    def closeEvent(self, event):
        page_principale.page_selection_livre.show()

# Page permettant de continuer ou supprimer une sauvegarde
class PageSauvegarde(QMainWindow, Ui_PageSauvegarde):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageSauvegarde, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # Va chercher tous les sauvegardes et les affiche dans le combobox
        self.sauvegardes = getSauvegardes()
        for sauvegarde in self.sauvegardes:
            sauvegarde_id, feuille_aventure_id, titre, id_chapitre, no_chapitre, or_bourse, habilete, endurance, id_livre, objets_speciaux = sauvegarde
            self.combobox_sauvegarde.addItem(str(sauvegarde_id) + ": " + titre + "/Chapitre " + no_chapitre + "/Habilete: " + str(habilete) + "/Endurance: " + str(endurance) + "/Or: " + str(or_bourse))
        # Ce bouton permet de selectionner une sauvegarde
        self.bouton_selectionner_sauvegarde.clicked.connect(
            lambda checked: self.selectionSauvegarde(self.combobox_sauvegarde.currentIndex())
        )
        # Ce bouton permet de supprimer une sauvegarde
        self.bouton_supprimer_sauvegarde.clicked.connect(
            lambda checked: self.supprimerSauvegarde(self.combobox_sauvegarde.currentText(), self.combobox_sauvegarde.currentIndex())
        )
    # Si la page est fermee, on revient a la page precedente
    def closeEvent(self, event):
        page_principale.show()
    # Cette methode permet de selectionner une sauvegarde
    def selectionSauvegarde(self, index):
        nb = 0
        trouve = False
        # Trouve le id de la sauvegarde en fonction de son index dans le comboBox
        for sauvegarde in self.sauvegardes:
            sauvegarde_id, feuille_aventure_id, titre, id_chapitre, no_chapitre, or_bourse, habilete, endurance, id_livre, objets_speciaux = sauvegarde
            if nb == index and not trouve:
                # Lorsque la sauvegarde esr trouve, enregistre tous les informations dans la page principale
                page_principale.id_sauvegarde = sauvegarde_id
                chapitre = "Chapitre " + no_chapitre
                trouve = True
                page_principale.sauvegarde = True
                page_principale.creation = False
                page_principale.id_chapitre = id_chapitre
                page_principale.endurance = endurance
                page_principale.habilete = habilete
                page_principale.nb_or = or_bourse
                page_principale.id_feuille_aventure = feuille_aventure_id
                page_principale.id_livre = id_livre
                page_principale.objets_speciaux = objets_speciaux
            nb += 1
        # Affiche la page du chapitre que l'utilisateur est rendu
        self.hide()
        page_principale.page_chapitre.show()
        page_principale.page_chapitre.afficherProchainChapitre(chapitre)
    # Cette methode permet de supprimer une sauvegarde
    def supprimerSauvegarde(self, text, index):
        id_sauvegarde = ""
        fin = False
        # Enleve la sauvegarde du combobox
        self.combobox_sauvegarde.removeItem(index)
        # Trouve l'id de la sauvegarde en fonction du texte dans le combobox
        for lettre in text:
            if lettre != ":":
                if not fin:
                    id_sauvegarde += lettre
            else:
                fin = True
        page_principale.id_sauvegarde = id_sauvegarde
        # Efface la sauvegarde
        deleteSauvegarde(page_principale.id_sauvegarde)
        
# Page permettant de selectionner un livre afin de commencer une nouvelle partie
class PageSelectionLivre(QMainWindow, Ui_PageSelectionLivre):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageSelectionLivre, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # Fait un requete a la bd pour obtenir tous les informations sur les livres
        self.livres = getLivres()
        # Pour chaque livre, ajoute les information au comboBox de selection du livre
        for livre in self.livres:
            id, titre, tome, nom_serie = livre
            self.combobox_selection_livre.addItem(nom_serie + ", tome " + str(tome) + " : " + titre)
        # Le bouton permet de passer a la prochaine page
        self.bouton_selectionner_livre.clicked.connect(
            lambda checked: self.selectionLivre(self.combobox_selection_livre.currentIndex())
        )
    # Si la page est fermee, on revient a la page precedente
    def closeEvent(self, event):
        page_principale.show()
    # Cette fonction permet de garder en memoire l'id du livre et de commencer la creation du personnage
    def selectionLivre(self, index):
        nb = 0
        trouve = False
        # Trouve le id du livre en fonction de son index dans le comboBox
        for livre in self.livres:
            id, titre, tome, nom_serie = livre
            if nb == index and not trouve:
                page_principale.id_livre = id
                trouve = True
            nb += 1
        # Affiche la page de creation du personnage et cache la page de selection du livre
        self.hide()
        page_principale.page_creation_personnage_1.show()

# Premiere page lors du demarrage de l'application
# Permet de choisir entre commencer une nouvelle partie ou continuer une sauvegarde
class PageBienvenu(QMainWindow, Ui_PageBienvenu):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageBienvenu, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # Creation de tous les pages
        self.page_sauvegarde = PageSauvegarde()
        self.page_selection_livre = PageSelectionLivre()
        self.page_creation_personnage_1 = PageCreationPersonnage1()
        self.page_creation_personnage_2 = PageCreationPersonnage2()
        self.page_creation_personnage_3 = PageCreationPersonnage3()
        self.page_intro = PageIntro()
        self.page_chapitre = PageChapitre()
        self.page_quitter = PageQuitter()
        self.page_description_discipline_kai = PageDescriptionDisciplineKai()
        self.page_feuille_aventure = PageFeuilleAventure()
        self.page_supprimer_objet = PageSupprimerObjet()
        self.page_ajouter_objet = PageAjouterObjet()
        self.discipline_kai = ""
        # Informations pris en note pour la sauvegarde
        self.sauvegarde = False
        self.creation = True
        self.id_chapitre = 0
        self.chapitre = 1
        self.endurance = 0
        self.habilete = 0
        self.id_livre = 0
        self.nb_or = 0
        self.disciplines_kai = {}
        self.armes = {7}
        self.objets = [1, 0, 0, 0, 0, 0, 0, 0]
        self.objets_speciaux = "Carte Géographique: Vous permet de vous orienter\n"
        self.id_sauvegarde = 0
        self.id_feuille_aventure = 0

        # Ce bouton permet de choisir une sauvegarde
        self.bouton_continuer_sauvegarde.clicked.connect(
            lambda checked: self.afficher_fenetre(self.page_sauvegarde, self)
        )
        # Ce bouton permet de commencer une nouvelle partie
        self.bouton_nouvelle_partie.clicked.connect(
            lambda checked: self.afficher_fenetre(self.page_selection_livre, self)
        )

    # Fonction permettant d'afficher une fenetre passe en parametre et de cacher le parent
    def afficher_fenetre(self, fenetre, parent):
        fenetre.show()
        parent.hide()

# Creer la page principale et demarrer l'application
app = QApplication(sys.argv)
page_principale = PageBienvenu()
page_principale.show()
app.exec()