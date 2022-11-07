import sys
from PyQt5.QtWidgets import QApplication, QMainWindow, QMessageBox
# Importer la classe Ui_MainWindow du fichier MainWindow.py
from PageBienvenu import Ui_PageBienvenu
from PageSauvegarde import Ui_PageSauvegarde
from PageSelectionLivre import Ui_PageSelectionLivre
from PageCreationPersonnage1 import Ui_PageCreationPersonnage1
from PageCreationPersonnage2 import Ui_PageCreationPersonnage2
from PageIntro import Ui_PageIntro
from PageChapitre import Ui_PageChapitre
from PageQuitter import Ui_PageQuitter

class PageQuitter(QMainWindow, Ui_PageQuitter):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageQuitter, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # On connecter un événement sur le line edit
        self.bouton_quitter.clicked.connect(self.quitter)
    def closeEvent(self, event):
        event.ignore()
    def quitter(self):
        sys.exit()

class PageChapitre(QMainWindow, Ui_PageChapitre):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageChapitre, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # On connecter un événement sur le line edit
        self.bouton_quitter.clicked.connect(self.quitter)
    def closeEvent(self, event):
        event.ignore()
    def quitter(self):
        sys.exit()

class PageIntro(QMainWindow, Ui_PageIntro):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageIntro, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # On connecter un événement sur le line edit
        self.bouton_continuer.clicked.connect(
            lambda checked: page_principale.afficher_fenetre(page_principale.page_chapitre, self)
        )
    def closeEvent(self, event):
        page_principale.page_creation_personnage_2.show()

class PageCreationPersonnage2(QMainWindow, Ui_PageCreationPersonnage2):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageCreationPersonnage2, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # On connecter un événement sur le line edit
        self.bouton_continuer.clicked.connect(
            lambda checked: page_principale.afficher_fenetre(page_principale.page_intro, self)
        )
    def closeEvent(self, event):
        page_principale.page_creation_personnage_1.show()

class PageCreationPersonnage1(QMainWindow, Ui_PageCreationPersonnage1):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageCreationPersonnage1, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # On connecter un événement sur le line edit
        self.bouton_continuer.clicked.connect(
            lambda checked: page_principale.afficher_fenetre(page_principale.page_creation_personnage_2, self)
        )
    def closeEvent(self, event):
        page_principale.page_selection_livre.show()


class PageSauvegarde(QMainWindow, Ui_PageSauvegarde):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageSauvegarde, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # On connecter un événement sur le line edit
    def closeEvent(self, event):
        page_principale.show()
        

class PageSelectionLivre(QMainWindow, Ui_PageSelectionLivre):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageSelectionLivre, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # On connecter un événement sur le line edit
        self.combobox_selection_livre.addItem("item1")
        self.combobox_selection_livre.addItem("item2")
        self.combobox_selection_livre.addItem("item3")
        self.combobox_selection_livre.addItem("item4")

        self.combobox_selection_livre.activated.connect(self.test)
        self.bouton_selectionner_livre.clicked.connect(
            lambda checked: page_principale.afficher_fenetre(page_principale.page_creation_personnage_1, self)
        )
    def test():
        print("yes")
    def closeEvent(self, event):
        page_principale.show()
    
        

# En paramêtre de la classe MainWindow on va hériter des fonctionnalités
# de QMainWindow et de notre interface Ui_MainWindow
class PageBienvenu(QMainWindow, Ui_PageBienvenu):
    def __init__(self, *args, obj=None, **kwargs):
        super(PageBienvenu, self).__init__(*args, **kwargs)
        # On va créer la fenêtre avec cette commande
        self.setupUi(self)
        # On connecter un événement sur le line edit
        self.page_sauvegarde = PageSauvegarde()
        self.page_selection_livre = PageSelectionLivre()
        self.page_creation_personnage_1 = PageCreationPersonnage1()
        self.page_creation_personnage_2 = PageCreationPersonnage2()
        self.page_intro = PageIntro()
        self.page_chapitre = PageChapitre()
        self.bouton_continuer_sauvegarde.clicked.connect(
            lambda checked: self.afficher_fenetre(self.page_sauvegarde, self)
        )
        self.bouton_nouvelle_partie.clicked.connect(
            lambda checked: self.afficher_fenetre(self.page_selection_livre, self)
        )

    def afficher_fenetre(self, fenetre, parent):
        fenetre.show()
        parent.hide()

app = QApplication(sys.argv)
page_principale = PageBienvenu()
page_principale.show()
app.exec()