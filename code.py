import sys
from PyQt5.QtWidgets import QApplication, QMainWindow, QMessageBox
import random
# Importer chaque page
from Pages_PY.PageBienvenu import Ui_PageBienvenu
from Pages_PY.PageSauvegarde import Ui_PageSauvegarde
from Pages_PY.PageSelectionLivre import Ui_PageSelectionLivre
from Pages_PY.PageCreationPersonnage1 import Ui_PageCreationPersonnage1
from Pages_PY.PageCreationPersonnage2 import Ui_PageCreationPersonnage2
from Pages_PY.PageIntro import Ui_PageIntro
from Pages_PY.PageChapitre import Ui_PageChapitre
from Pages_PY.PageQuitter import Ui_PageQuitter
from Pages_PY.PageDescriptionDisciplineKai import Ui_PageDescriptionDisciplineKai
# Importer les methodes de communication avec la bd
from bd_LDVELH import getLivres, getDisciplinesKai, getDescription, getIntro, getChapitre, getChoix

# Page permettant de visualiser la description d'une discipline kai
class PageDescriptionDisciplineKai(QMainWindow, Ui_PageDescriptionDisciplineKai):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageDescriptionDisciplineKai, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # Ce bouton permet de retourner a la page de selection des disciplines kai
        self.bouton_retour.clicked.connect(self.retour)
    # Empeche la page d'etre fermee
    def closeEvent(self, event):
        event.ignore()
    # Cette methode permet d'afficher la page de selection des disciplines kai et de cacher la page de description
    def retour(self):
        page_principale.page_description_discipline_kai.hide()
        page_principale.page_creation_personnage_2.show()

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
    # Empeche la page d'etre fermee
    def closeEvent(self, event):
        event.ignore()
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
        chapitre = getChapitre(page_principale.chapitre)
        resultat = getChoix(page_principale.chapitre)
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
        # Connecter le bouton a un evenement
        # Ce bouton permet de passer au chapitre 1
        self.bouton_continuer.clicked.connect(self.afficherChapitre1)
    # Si la page est fermee, on revient a la page precedente
    def closeEvent(self, event):
        page_principale.page_creation_personnage_2.show()
    # Cette fonction permet d'afficher le titre, le texte et les choix du chapitre 1
    def afficherChapitre1(self):
        nb = 0
        tableau_choix = {}
        # Cache cette page et affiche la page de chapitres
        page_principale.page_chapitre.show()
        self.hide()
        # Fait les requetes a la bd pour obtenir le texte du chapitre 1 et les choix possibles
        chapitre = getChapitre(page_principale.chapitre)
        resultat = getChoix(page_principale.chapitre)
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

# Page permettant de continuer la creation du personnage lors d'une nouvelle partie
# Selection des Disciplines Kai
class PageCreationPersonnage2(QMainWindow, Ui_PageCreationPersonnage2):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageCreationPersonnage2, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
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
        # Connecter le bouton a un evenement
        # Ce bouton permet d'obtenir la description de la discipline kai selectionne dans le premier comboBox
        self.bouton_description_1.clicked.connect(
            lambda checked: self.afficherDescriptionDisciplineKai(page_principale.page_description_discipline_kai, self, self.combobox_kai_1.currentText())
        )
        # Ce bouton permet d'obtenir la description de la discipline kai selectionne dans le deuxieme comboBox
        self.bouton_description_2.clicked.connect(
            lambda checked: self.afficherDescriptionDisciplineKai(page_principale.page_description_discipline_kai, self, self.combobox_kai_2.currentText())
        )
        # Ce bouton permet d'obtenir la description de la discipline kai selectionne dans le troisieme comboBox
        self.bouton_description_3.clicked.connect(
            lambda checked: self.afficherDescriptionDisciplineKai(page_principale.page_description_discipline_kai, self, self.combobox_kai_3.currentText())
        )
        # Ce bouton permet d'obtenir la description de la discipline kai selectionne dans le quatrieme comboBox
        self.bouton_description_4.clicked.connect(
            lambda checked: self.afficherDescriptionDisciplineKai(page_principale.page_description_discipline_kai, self, self.combobox_kai_4.currentText())
        )
        # Ce bouton permet d'obtenir la description de la discipline kai selectionne dans le cinquieme comboBox
        self.bouton_description_5.clicked.connect(
            lambda checked: self.afficherDescriptionDisciplineKai(page_principale.page_description_discipline_kai, self, self.combobox_kai_5.currentText())
        )
        # Ce bouton permet de continuer a la prochaine page lorsque l'utilisateur a termine de choisir ses disciplines kai
        self.bouton_continuer.clicked.connect(
            lambda checked: page_principale.afficher_fenetre(page_principale.page_intro, self)
        )
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

# Page permettant de commencer la creation du personnage lors d'une nouvelle partie
# Generation de l'endurance et de l'habilete
class PageCreationPersonnage1(QMainWindow, Ui_PageCreationPersonnage1):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageCreationPersonnage1, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # Connecter le bouton a un evenement
        # Ce bouton permet de passer a la prochaine page
        self.bouton_continuer.clicked.connect(
            lambda checked: page_principale.afficher_fenetre(page_principale.page_creation_personnage_2, self)
        )
        # Permet de generer qu'une seule fois l'habilete et l'enduurence
        self.generation_habilete = False
        self.generation_endurance = False
        # Ce bouton permet de generer l'endurance
        self.bouton_generer_endurance.clicked.connect(self.generer_endurance)
        # Ce bouton permet de generer l'habilete
        self.bouton_generer_habilete.clicked.connect(self.generer_habilete)
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
    # Si la page est fermee, on revient a la page precedente
    def closeEvent(self, event):
        page_principale.page_selection_livre.show()

# Page permettant de continuer ou supprimer une sauvegarde
class PageSauvegarde(QMainWindow, Ui_PageSauvegarde):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageSauvegarde, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # Connecter le bouton a un evenement
        # Ce bouton permet de passer a la prochaine page
        self.bouton_selectionner_sauvegarde.clicked.connect(
            lambda checked: page_principale.afficher_fenetre(page_principale.page_chapitre, self)
        )
    # Si la page est fermee, on revient a la page precedente
    def closeEvent(self, event):
        page_principale.show()
        

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
        # Connecter le bouton a un evenement
        # Le bouton permet de passer a la prochaine page
        self.bouton_selectionner_livre.clicked.connect(
            lambda checked: self.commencerCreationPersonnage(self.combobox_selection_livre.currentIndex())
        )
    # Si la page est fermee, on revient a la page precedente
    def closeEvent(self, event):
        page_principale.show()
    # Cette fonction permet de garder en memoire l'id du livre et de commencer la creation du personnage
    def commencerCreationPersonnage(self, index):
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
        self.page_intro = PageIntro()
        self.page_chapitre = PageChapitre()
        self.page_quitter = PageQuitter()
        self.page_description_discipline_kai = PageDescriptionDisciplineKai()
        self.discipline_kai = ""
        # Informations pris en note pour la sauvegarde
        self.chapitre = 1
        self.endurance = 0
        self.habilete = 0
        self.id_livre = 0

        # Connecter les deux boutons a un evenement
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