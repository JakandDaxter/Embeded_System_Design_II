#!/usr/bin/python
# -*- coding: utf-8 -*-

"""
ZetCode PyQt4 tutorial

In this example, we create three toggle buttons.
They will control the background color of a
QtGui.QFrame.

author: Jan Bodnar
website: zetcode.com
last edited: September 2011
"""

import sys
from PyQt4 import QtGui


class Example(QtGui.QWidget):

    def __init__(self):
        super(Example, self).__init__()

        self.initUI()

    def initUI(self):
        redb = QtGui.QPushButton('Red', self)
        redb.setCheckable(True)

        redb.clicked[bool].connect(self.setColor)
        self.show()

    def setColor(self, pressed):
        if pressed:
            print("red button pressed")
        else:
            print("not pressed")


def main():
    app = QtGui.QApplication(sys.argv)
    ex = Example()
    sys.exit(app.exec_())


if __name__ == '__main__':
    main()