# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'page_intro.ui'
#
# Created by: PyQt5 UI code generator 5.15.7
#
# WARNING: Any manual changes made to this file will be lost when pyuic5 is
# run again.  Do not edit this file unless you know what you are doing.


from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_PageIntro(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(800, 600)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.verticalLayout_2 = QtWidgets.QVBoxLayout(self.centralwidget)
        self.verticalLayout_2.setObjectName("verticalLayout_2")
        self.verticalLayout = QtWidgets.QVBoxLayout()
        self.verticalLayout.setObjectName("verticalLayout")
        self.titre_intro = QtWidgets.QLabel(self.centralwidget)
        font = QtGui.QFont()
        font.setPointSize(24)
        self.titre_intro.setFont(font)
        self.titre_intro.setAlignment(QtCore.Qt.AlignCenter)
        self.titre_intro.setObjectName("titre_intro")
        self.verticalLayout.addWidget(self.titre_intro)
        self.texte_intro = QtWidgets.QLabel(self.centralwidget)
        self.texte_intro.setMinimumSize(QtCore.QSize(0, 400))
        font = QtGui.QFont()
        font.setPointSize(16)
        self.texte_intro.setFont(font)
        self.texte_intro.setAlignment(QtCore.Qt.AlignCenter)
        self.texte_intro.setWordWrap(True)
        self.texte_intro.setObjectName("texte_intro")
        self.verticalLayout.addWidget(self.texte_intro)
        self.bouton_continuer = QtWidgets.QPushButton(self.centralwidget)
        self.bouton_continuer.setMinimumSize(QtCore.QSize(0, 75))
        font = QtGui.QFont()
        font.setPointSize(20)
        self.bouton_continuer.setFont(font)
        self.bouton_continuer.setObjectName("bouton_continuer")
        self.verticalLayout.addWidget(self.bouton_continuer)
        self.verticalLayout_2.addLayout(self.verticalLayout)
        MainWindow.setCentralWidget(self.centralwidget)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow"))
        self.titre_intro.setText(_translate("MainWindow", "Titre"))
        self.texte_intro.setText(_translate("MainWindow", "Texte"))
        self.bouton_continuer.setText(_translate("MainWindow", "Continuer"))
