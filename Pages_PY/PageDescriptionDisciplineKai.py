# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'page_description_discipline_kai.ui'
#
# Created by: PyQt5 UI code generator 5.15.7
#
# WARNING: Any manual changes made to this file will be lost when pyuic5 is
# run again.  Do not edit this file unless you know what you are doing.


from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_PageDescriptionDisciplineKai(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(800, 600)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.verticalLayout_2 = QtWidgets.QVBoxLayout(self.centralwidget)
        self.verticalLayout_2.setObjectName("verticalLayout_2")
        self.verticalLayout = QtWidgets.QVBoxLayout()
        self.verticalLayout.setObjectName("verticalLayout")
        self.nom_discipline_kai = QtWidgets.QLabel(self.centralwidget)
        font = QtGui.QFont()
        font.setPointSize(24)
        self.nom_discipline_kai.setFont(font)
        self.nom_discipline_kai.setAlignment(QtCore.Qt.AlignCenter)
        self.nom_discipline_kai.setObjectName("nom_discipline_kai")
        self.verticalLayout.addWidget(self.nom_discipline_kai)
        self.description_discipline_kai = QtWidgets.QLabel(self.centralwidget)
        self.description_discipline_kai.setMinimumSize(QtCore.QSize(0, 400))
        font = QtGui.QFont()
        font.setPointSize(16)
        self.description_discipline_kai.setFont(font)
        self.description_discipline_kai.setAlignment(QtCore.Qt.AlignCenter)
        self.description_discipline_kai.setWordWrap(True)
        self.description_discipline_kai.setObjectName("description_discipline_kai")
        self.verticalLayout.addWidget(self.description_discipline_kai)
        self.bouton_retour = QtWidgets.QPushButton(self.centralwidget)
        self.bouton_retour.setMinimumSize(QtCore.QSize(0, 75))
        font = QtGui.QFont()
        font.setPointSize(20)
        self.bouton_retour.setFont(font)
        self.bouton_retour.setObjectName("bouton_retour")
        self.verticalLayout.addWidget(self.bouton_retour)
        self.verticalLayout_2.addLayout(self.verticalLayout)
        MainWindow.setCentralWidget(self.centralwidget)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow"))
        self.nom_discipline_kai.setText(_translate("MainWindow", "Nom Discipline Kai"))
        self.description_discipline_kai.setText(_translate("MainWindow", "Description Discipline Kai"))
        self.bouton_retour.setText(_translate("MainWindow", "Retour"))