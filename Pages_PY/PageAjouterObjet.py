# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'page_ajouter_objet.ui'
#
# Created by: PyQt5 UI code generator 5.15.7
#
# WARNING: Any manual changes made to this file will be lost when pyuic5 is
# run again.  Do not edit this file unless you know what you are doing.


from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_PageAjouterObjet(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(800, 600)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.gridLayout_2 = QtWidgets.QGridLayout(self.centralwidget)
        self.gridLayout_2.setObjectName("gridLayout_2")
        self.label_ajouter_item = QtWidgets.QLabel(self.centralwidget)
        font = QtGui.QFont()
        font.setPointSize(20)
        self.label_ajouter_item.setFont(font)
        self.label_ajouter_item.setAlignment(QtCore.Qt.AlignCenter)
        self.label_ajouter_item.setObjectName("label_ajouter_item")
        self.gridLayout_2.addWidget(self.label_ajouter_item, 0, 0, 1, 2)
        self.bouton_annuler = QtWidgets.QPushButton(self.centralwidget)
        font = QtGui.QFont()
        font.setPointSize(20)
        self.bouton_annuler.setFont(font)
        self.bouton_annuler.setObjectName("bouton_annuler")
        self.gridLayout_2.addWidget(self.bouton_annuler, 5, 1, 1, 1)
        self.label_description = QtWidgets.QLabel(self.centralwidget)
        font = QtGui.QFont()
        font.setPointSize(20)
        self.label_description.setFont(font)
        self.label_description.setObjectName("label_description")
        self.gridLayout_2.addWidget(self.label_description, 3, 0, 1, 1)
        self.champ_texte_nom = QtWidgets.QLineEdit(self.centralwidget)
        font = QtGui.QFont()
        font.setPointSize(20)
        self.champ_texte_nom.setFont(font)
        self.champ_texte_nom.setObjectName("champ_texte_nom")
        self.gridLayout_2.addWidget(self.champ_texte_nom, 2, 0, 1, 2)
        self.bouton_ajouter = QtWidgets.QPushButton(self.centralwidget)
        font = QtGui.QFont()
        font.setPointSize(20)
        self.bouton_ajouter.setFont(font)
        self.bouton_ajouter.setObjectName("bouton_ajouter")
        self.gridLayout_2.addWidget(self.bouton_ajouter, 5, 0, 1, 1)
        self.champ_texte_description = QtWidgets.QPlainTextEdit(self.centralwidget)
        font = QtGui.QFont()
        font.setPointSize(20)
        self.champ_texte_description.setFont(font)
        self.champ_texte_description.setObjectName("champ_texte_description")
        self.gridLayout_2.addWidget(self.champ_texte_description, 4, 0, 1, 2)
        self.label_nom = QtWidgets.QLabel(self.centralwidget)
        font = QtGui.QFont()
        font.setPointSize(20)
        self.label_nom.setFont(font)
        self.label_nom.setObjectName("label_nom")
        self.gridLayout_2.addWidget(self.label_nom, 1, 0, 1, 1)
        MainWindow.setCentralWidget(self.centralwidget)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow"))
        self.label_ajouter_item.setText(_translate("MainWindow", "Ajouter Un Objet"))
        self.bouton_annuler.setText(_translate("MainWindow", "Annuler"))
        self.label_description.setText(_translate("MainWindow", "Description:"))
        self.bouton_ajouter.setText(_translate("MainWindow", "Ajouter"))
        self.label_nom.setText(_translate("MainWindow", "Nom:"))
