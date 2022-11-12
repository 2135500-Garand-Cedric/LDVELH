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
from bd_LDVELH import getLivres, getDisciplinesKai, getDescription, getIntro, getChapitre, getChoix

# Page permettant de visualiser la description d'une discipline kai
class PageDescriptionDisciplineKai(QMainWindow, Ui_PageDescriptionDisciplineKai):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageDescriptionDisciplineKai, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        self.bouton_retour.clicked.connect(self.retour)
    # Empeche la page d'etre fermee
    def closeEvent(self, event):
        event.ignore()
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
        self.bouton_choix_1.clicked.connect(
            lambda checked: self.afficherProchainChapitre(self.bouton_choix_1.text())
        )
        self.bouton_choix_2.clicked.connect(
            lambda checked: self.afficherProchainChapitre(self.bouton_choix_2.text())
        )
        self.bouton_choix_3.clicked.connect(
            lambda checked: self.afficherProchainChapitre(self.bouton_choix_3.text())
        )
        self.bouton_choix_4.clicked.connect(
            lambda checked: self.afficherProchainChapitre(self.bouton_choix_4.text())
        )
    # Empeche la page d'etre fermee
    def closeEvent(self, event):
        event.ignore()
    def afficherProchainChapitre(self, prochain_chapitre):
        choix_chapitre = ""
        nb = 0
        for lettre in prochain_chapitre:
            if nb > 8:
                choix_chapitre += lettre
            nb += 1
        page_principale.chapitre = int(choix_chapitre)
        tableau_choix = {}
        chapitre = getChapitre(page_principale.chapitre)
        resultat = getChoix(page_principale.chapitre)
        if chapitre and resultat is not None:
            nb = 0
            titre, texte = chapitre
            page_principale.page_chapitre.titre_chapitre.setText("Chapitre " + titre)
            page_principale.page_chapitre.texte_chapitre.setText(texte)
            for choix in resultat:
                no_chapitre_origine, no_chapitre_destination = choix
                tableau_choix[nb] = "Chapitre " + str(no_chapitre_destination)
                nb += 1
            page_principale.page_chapitre.bouton_choix_1.hide()
            page_principale.page_chapitre.bouton_choix_2.hide()
            page_principale.page_chapitre.bouton_choix_3.hide()
            page_principale.page_chapitre.bouton_choix_4.hide()
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

# Page permettant d'afficher le message d'introduction du livre
class PageIntro(QMainWindow, Ui_PageIntro):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageIntro, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        intro = getIntro()
        if intro is not None:
            titre, texte = intro
            self.titre_intro.setText(titre)
            self.texte_intro.setText(texte)
        # Connecter le bouton a un evenement
        # Ce bouton permet de passer a la prochaine page
        self.bouton_continuer.clicked.connect(self.afficherChapitre1)
        #self.bouton_continuer.clicked.connect(self.afficherChapitre1)
    # Si la page est fermee, on revient a la page precedente
    def closeEvent(self, event):
        page_principale.page_creation_personnage_2.show()
    def afficherChapitre1(self):
        nb = 0
        tableau_choix = {}
        page_principale.page_chapitre.show()
        self.hide()
        chapitre = getChapitre(page_principale.chapitre)
        resultat = getChoix(page_principale.chapitre)
        if chapitre and resultat is not None:
            titre, texte = chapitre
            page_principale.page_chapitre.titre_chapitre.setText("Chapitre " + titre)
            page_principale.page_chapitre.texte_chapitre.setText(texte)
            for choix in resultat:
                no_chapitre_origine, no_chapitre_destination = choix
                tableau_choix[nb] = "Chapitre " + str(no_chapitre_destination)
                nb += 1
            page_principale.page_chapitre.bouton_choix_1.setText(tableau_choix[0])
            page_principale.page_chapitre.bouton_choix_2.setText(tableau_choix[1])
            page_principale.page_chapitre.bouton_choix_3.setText(tableau_choix[2])
            page_principale.page_chapitre.bouton_choix_4.hide()



        


# Page permettant de continuer la creation du personnage lors d'une nouvelle partie
# Selection des Disciplines Kai
class PageCreationPersonnage2(QMainWindow, Ui_PageCreationPersonnage2):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageCreationPersonnage2, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        disciplines_kai = getDisciplinesKai()
        if disciplines_kai is not None:
            for discipline_kai in disciplines_kai:
                nom, description = discipline_kai
                self.combobox_kai_1.addItem(nom)
                self.combobox_kai_2.addItem(nom)
                self.combobox_kai_3.addItem(nom)
                self.combobox_kai_4.addItem(nom)
                self.combobox_kai_5.addItem(nom)
        # Connecter le bouton a un evenement
        self.bouton_description_1.clicked.connect(
            lambda checked: self.afficherDescriptionDisciplineKai(page_principale.page_description_discipline_kai, self, self.combobox_kai_1.currentText())
        )
        self.bouton_description_2.clicked.connect(
            lambda checked: self.afficherDescriptionDisciplineKai(page_principale.page_description_discipline_kai, self, self.combobox_kai_2.currentText())
        )
        self.bouton_description_3.clicked.connect(
            lambda checked: self.afficherDescriptionDisciplineKai(page_principale.page_description_discipline_kai, self, self.combobox_kai_3.currentText())
        )
        self.bouton_description_4.clicked.connect(
            lambda checked: self.afficherDescriptionDisciplineKai(page_principale.page_description_discipline_kai, self, self.combobox_kai_4.currentText())
        )
        self.bouton_description_5.clicked.connect(
            lambda checked: self.afficherDescriptionDisciplineKai(page_principale.page_description_discipline_kai, self, self.combobox_kai_5.currentText())
        )
        self.bouton_continuer.clicked.connect(
            lambda checked: page_principale.afficher_fenetre(page_principale.page_intro, self)
        )
    # Si la page est fermee, on revient a la page precedente    
    def closeEvent(self, event):
        page_principale.page_creation_personnage_1.show()
    def afficherDescriptionDisciplineKai(self, fenetre, parent, textComboBox):
        fenetre.show()
        parent.hide()
        page_principale.page_description_discipline_kai.nom_discipline_kai.setText(textComboBox)
        resultat = getDescription(textComboBox)
        if resultat is not None:
            nom, description = resultat
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
        self.generation_habilete = False
        self.generation_endurance = False
        self.bouton_generer_endurance.clicked.connect(self.generer_endurance)
        self.bouton_generer_habilete.clicked.connect(self.generer_habilete)
    def generer_endurance(self):
        if not self.generation_endurance:
            endurance = random.randint(0, 9)
            self.label_endurance.setText("Endurance: 20 + " + str(endurance) + " = " + str(endurance+20))
            self.generation_endurance = True
    def generer_habilete(self):
        if not self.generation_habilete:
            habilete = random.randint(0, 9)
            self.label_habilete.setText("Habileté: 10 + " + str(habilete) + " = " + str(habilete+10))
            self.generation_habilete= True
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
        livres = getLivres()
        for livre in livres:
            titre, tome, nom_serie = livre
            self.combobox_selection_livre.addItem(nom_serie + ", tome " + str(tome) + " : " + titre)
        # Connecter le bouton a un evenement
        # Le bouton permet de passer a la prochaine page
        self.bouton_selectionner_livre.clicked.connect(
            lambda checked: page_principale.afficher_fenetre(page_principale.page_creation_personnage_1, self)
        )
    # Si la page est fermee, on revient a la page precedente
    def closeEvent(self, event):
        page_principale.show()
    
        

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
        self.chapitre = 1

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