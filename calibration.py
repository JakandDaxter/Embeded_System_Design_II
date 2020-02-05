import sys
from PyQt4 import QtGui, QtCore

from globals import globals


class Calibration(QtGui.QWidget):
    def __init__(self, parent=None):
        super(Calibration, self).__init__(parent)

        # -------------------------------------------------------------------------- #

        self.labelBrightnessTitle = QtGui.QLabel(self)
        self.labelBrightnessTitle.setText("Brightness")
        self.brightness = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.brightness.setSingleStep(1)
        self.brightness.setMinimum(2)
        self.brightness.setMaximum(64)
        self.brightness.valueChanged[int].connect(self.brightnessChanged)
        self.brightnessEdit = QtGui.QLineEdit(self)
        self.brightnessEdit.returnPressed.connect(self.brightnessEditChanged)
        self.brightnessGroup = QtGui.QGroupBox()
        layoutbrightness = QtGui.QHBoxLayout()
        layoutbrightness.addWidget(self.labelBrightnessTitle)
        layoutbrightness.addWidget(self.brightnessEdit)
        layoutbrightnessVertical = QtGui.QVBoxLayout()
        layoutbrightnessVertical.addLayout(layoutbrightness)
        layoutbrightnessVertical.addWidget(self.brightness)
        self.brightnessGroup.setLayout(layoutbrightnessVertical)

        # -------------------------------------------------------------------------- #

        self.labelRedMinTitle = QtGui.QLabel(self)
        self.labelRedMinTitle.setText("redMin")
        self.redMin = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.redMin.setSingleStep(1)
        self.redMin.setMinimum(1)
        self.redMin.setMaximum(255)
        self.redMin.valueChanged[int].connect(self.redMinChanged)
        self.redMinEdit = QtGui.QLineEdit(self)
        self.redMinEdit.returnPressed.connect(self.redMinEditChanged)
        self.redMinGroup = QtGui.QGroupBox()
        layoutRedMin = QtGui.QHBoxLayout()
        layoutRedMin.addWidget(self.labelRedMinTitle)
        layoutRedMin.addWidget(self.redMinEdit)
        layoutRedMinVertical = QtGui.QVBoxLayout()
        layoutRedMinVertical.addLayout(layoutRedMin)
        layoutRedMinVertical.addWidget(self.redMin)
        self.redMinGroup.setLayout(layoutRedMinVertical)

        self.labelRedMaxTitle = QtGui.QLabel(self)
        self.labelRedMaxTitle.setText("redMax")
        self.redMax = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.redMax.setSingleStep(1)
        self.redMax.setMinimum(1)
        self.redMax.setMaximum(255)
        self.redMax.valueChanged[int].connect(self.redMaxChanged)
        self.redMaxEdit = QtGui.QLineEdit(self)
        self.redMaxEdit.returnPressed.connect(self.redMaxEditChanged)
        self.redMaxGroup = QtGui.QGroupBox()
        layoutRedMax = QtGui.QHBoxLayout()
        layoutRedMax.addWidget(self.labelRedMaxTitle)
        layoutRedMax.addWidget(self.redMaxEdit)
        layoutRedMaxVertical = QtGui.QVBoxLayout()
        layoutRedMaxVertical.addLayout(layoutRedMax)
        layoutRedMaxVertical.addWidget(self.redMax)
        self.redMaxGroup.setLayout(layoutRedMaxVertical)

        # -------------------------------------------------------------------------- #

        self.labelGreenMinTitle = QtGui.QLabel(self)
        self.labelGreenMinTitle.setText("greenMin")
        self.greenMin = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.greenMin.setSingleStep(1)
        self.greenMin.setMinimum(1)
        self.greenMin.setMaximum(255)
        self.greenMin.valueChanged[int].connect(self.greenMinChanged)
        self.greenMinEdit = QtGui.QLineEdit(self)
        self.greenMinEdit.returnPressed.connect(self.greenMinEditChanged)
        self.greenMinGroup = QtGui.QGroupBox()
        layoutGreenMin = QtGui.QHBoxLayout()
        layoutGreenMin.addWidget(self.labelGreenMinTitle)
        layoutGreenMin.addWidget(self.greenMinEdit)
        layoutGreenMinVertical = QtGui.QVBoxLayout()
        layoutGreenMinVertical.addLayout(layoutGreenMin)
        layoutGreenMinVertical.addWidget(self.greenMin)
        self.greenMinGroup.setLayout(layoutGreenMinVertical)

        self.labelGreenMaxTitle = QtGui.QLabel(self)
        self.labelGreenMaxTitle.setText("greenMax")
        self.greenMax = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.greenMax.setSingleStep(1)
        self.greenMax.setMinimum(1)
        self.greenMax.setMaximum(255)
        self.greenMax.valueChanged[int].connect(self.greenMaxChanged)
        self.greenMaxEdit = QtGui.QLineEdit(self)
        self.greenMaxEdit.returnPressed.connect(self.greenMaxEditChanged)
        self.greenMaxGroup = QtGui.QGroupBox()
        layoutGreenMax = QtGui.QHBoxLayout()
        layoutGreenMax.addWidget(self.labelGreenMaxTitle)
        layoutGreenMax.addWidget(self.greenMaxEdit)
        layoutGreenMaxVertical = QtGui.QVBoxLayout()
        layoutGreenMaxVertical.addLayout(layoutGreenMax)
        layoutGreenMaxVertical.addWidget(self.greenMax)
        self.greenMaxGroup.setLayout(layoutGreenMaxVertical)

        # -------------------------------------------------------------------------- #

        self.labelBlueMinTitle = QtGui.QLabel(self)
        self.labelBlueMinTitle.setText("blueMin")
        self.blueMin = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.blueMin.setSingleStep(1)
        self.blueMin.setMinimum(1)
        self.blueMin.setMaximum(255)
        self.blueMin.valueChanged[int].connect(self.blueMinChanged)
        self.blueMinEdit = QtGui.QLineEdit(self)
        self.blueMinEdit.returnPressed.connect(self.blueMinEditChanged)
        self.blueMinGroup = QtGui.QGroupBox()
        layoutBlueMin = QtGui.QHBoxLayout()
        layoutBlueMin.addWidget(self.labelBlueMinTitle)
        layoutBlueMin.addWidget(self.blueMinEdit)
        layoutBlueMinVertical = QtGui.QVBoxLayout()
        layoutBlueMinVertical.addLayout(layoutBlueMin)
        layoutBlueMinVertical.addWidget(self.blueMin)
        self.blueMinGroup.setLayout(layoutBlueMinVertical)

        self.labelBlueMaxTitle = QtGui.QLabel(self)
        self.labelBlueMaxTitle.setText("blueMax")
        self.blueMax = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.blueMax.setSingleStep(1)
        self.blueMax.setMinimum(1)
        self.blueMax.setMaximum(255)
        self.blueMax.valueChanged[int].connect(self.blueMaxChanged)
        self.blueMaxEdit = QtGui.QLineEdit(self)
        self.blueMaxEdit.returnPressed.connect(self.blueMaxEditChanged)
        self.blueMaxGroup = QtGui.QGroupBox()
        layoutBlueMax = QtGui.QHBoxLayout()
        layoutBlueMax.addWidget(self.labelBlueMaxTitle)
        layoutBlueMax.addWidget(self.blueMaxEdit)
        layoutBlueMaxVertical = QtGui.QVBoxLayout()
        layoutBlueMaxVertical.addLayout(layoutBlueMax)
        layoutBlueMaxVertical.addWidget(self.blueMax)
        self.blueMaxGroup.setLayout(layoutBlueMaxVertical)

        # -------------------------------------------------------------------------- #

        self.loadFileButton = QtGui.QPushButton("Load File")
        self.loadFileButton.setSizePolicy(QtGui.QSizePolicy.Expanding, QtGui.QSizePolicy.Expanding)
        self.loadFileButton.clicked[bool].connect(self.loadFileButtonClicked)

        self.saveFileButton = QtGui.QPushButton("Save File")
        self.saveFileButton.setSizePolicy(QtGui.QSizePolicy.Expanding, QtGui.QSizePolicy.Expanding)
        self.saveFileButton.clicked[bool].connect(self.saveFileButtonClicked)

        self.startButton = QtGui.QPushButton("Activate Sliders")
        self.startButton.setSizePolicy(QtGui.QSizePolicy.Expanding, QtGui.QSizePolicy.Expanding)
        self.startButton.clicked[bool].connect(self.startButtonClicked)

        self.detectGreen = QtGui.QRadioButton("Green Detection")
        self.detectGreen.toggled.connect(lambda: self.bState(self.detectGreen))

        self.detectBlue = QtGui.QRadioButton("Blue Detection")
        self.detectBlue.toggled.connect(lambda: self.bState(self.detectBlue))
        # -------------------------------------------------------------------------- #

        layout2 = QtGui.QHBoxLayout()
        layout2.addWidget(self.loadFileButton)
        layout2.addWidget(self.saveFileButton)
        layout2.addWidget(self.startButton)
        layout = QtGui.QVBoxLayout()
        layoutEncoder = QtGui.QVBoxLayout()
        layoutUltrasonic = QtGui.QVBoxLayout()
        layout3 = QtGui.QHBoxLayout()
        layout3.addWidget(self.detectGreen)
        layout3.addWidget(self.detectBlue)
        layout.addWidget(self.brightnessGroup)
        layout.addWidget(self.redMinGroup)
        layout.addWidget(self.redMaxGroup)
        layout.addWidget(self.greenMinGroup)
        layout.addWidget(self.greenMaxGroup)
        layout.addWidget(self.blueMinGroup)
        layout.addWidget(self.blueMaxGroup)

        layout.addLayout(layout3)
        layout.addLayout(layout2)
        self.setLayout(layout)

        self.show()

    ###############################################################################
    # link the edit boxes to the sliders
    ###############################################################################

    def brightnessChanged(self, value):
        globals.Brightness = value
        self.brightnessEdit.setText(str(value))

    def brightnessEditChanged(self):
        globals.Brightness = int(self.brightnessEdit.text())
        self.brightness.setValue(globals.Brightness)

    # -------------------------------------------------------------------------- #
    def redMinChanged(self, value):
        globals.redMin = value
        self.redMinEdit.setText(str(value))

    def redMinEditChanged(self):
        globals.redMin = float(self.redMinEdit.text())
        self.redMin.setValue(globals.redMin)

    # -------------------------------------------------------------------------- #

    def redMaxChanged(self, value):
        globals.redMax = value
        self.redMaxEdit.setText(str(value))

    def redMaxEditChanged(self):
        globals.redMax = float(self.redMaxEdit.text())
        self.redMax.setValue(globals.redMax)

    # -------------------------------------------------------------------------- #

    def greenMinChanged(self, value):
        globals.greenMin = value
        self.greenMinEdit.setText(str(value))

    def greenMinEditChanged(self):
        globals.greenMin = float(self.greenMinEdit.text())
        self.greenMin.setValue(globals.greenMin)

    # -------------------------------------------------------------------------- #

    def greenMaxChanged(self, value):
        globals.greenMax = value
        self.greenMaxEdit.setText(str(value))

    def greenMaxEditChanged(self):
        globals.greenMax = float(self.greenMaxEdit.text())
        self.greenMax.setValue(globals.greenMax)

    # -------------------------------------------------------------------------- #

    def blueMinChanged(self, value):
        globals.blueMin = value
        self.blueMinEdit.setText(str(value))

    def blueMinEditChanged(self):
        globals.blueMin = float(self.blueMinEdit.text())
        self.blueMin.setValue(globals.blueMin)

    # -------------------------------------------------------------------------- #

    def blueMaxChanged(self, value):
        globals.blueMax = value
        self.blueMaxEdit.setText(str(value))

    def blueMaxEditChanged(self):
        globals.blueMax = float(self.blueMaxEdit.text())
        self.blueMax.setValue(globals.blueMax)

    # -------------------------------------------------------------------------- #

    ###############################################################################
    # save and load calibration files
    ###############################################################################

    def loadFileButtonClicked(self):
        fileName = QtGui.QFileDialog.getOpenFileName(None, "Enter Filename.", ".txt", "(*.txt)")
        if not fileName:
            pass
        else:
            with open(fileName) as f:
                globals.Brightness = int(f.readline().split("= ")[1])
                globals.redMin = float(f.readline().split("= ")[1])
                globals.redMax = float(f.readline().split("= ")[1])
                globals.greenMin = float(f.readline().split("= ")[1])
                globals.greenMax = float(f.readline().split("= ")[1])
                globals.blueMin = float(f.readline().split("= ")[1])
                globals.blueMax = float(f.readline().split("= ")[1])

            self.brightness.setValue(globals.Brightness)
            self.redMin.setValue(globals.redMin)
            self.redMax.setValue(globals.redMax)
            self.greenMin.setValue(globals.greenMin)
            self.greenMax.setValue(globals.greenMax)
            self.blueMin.setValue(globals.blueMin)
            self.blueMax.setValue(globals.blueMax)

    # -------------------------------------------------------------------------- #

    def saveFileButtonClicked(self):
        fileName = QtGui.QFileDialog.getSaveFileName(None, "Enter Filename", ".txt", "(*.txt)")
        if fileName == "":
            return
        with open(fileName, "w") as f:
            f.write("Brightness                = " + str(globals.Brightness) + "\n")
            f.write("redMin                    = " + str(globals.redMin) + "\n")
            f.write("redMax                    = " + str(globals.redMax) + "\n")
            f.write("greenMin                  = " + str(globals.greenMin) + "\n")
            f.write("greenMax                  = " + str(globals.greenMax) + "\n")
            f.write("blueMin                   = " + str(globals.blueMin) + "\n")
            f.write("blueMax                   = " + str(globals.blueMax) + "\n")

    # -------------------------------------------------------------------------- #

    def startButtonClicked(self, pressed):
        if pressed:
            self.brightness.setValue(globals.Brightness)
            self.redMin.setValue(globals.redMin)
            self.redMax.setValue(globals.redMax)
            self.greenMin.setValue(globals.greenMin)
            self.greenMax.setValue(globals.greenMax)
            self.blueMin.setValue(globals.blueMin)
            self.blueMax.setValue(globals.blueMax)
            globals.startButton = 1
        pass

    # -------------------------------------------------------------------------- #

    def bState(self, button):
        if button.text() == "Load Green Parameters":
            if button.isChecked():
                with open("blueparameters.txt") as f:
                    self.brightness.setValue(globals.Brightness)
                    self.redMin.setValue(globals.redMin)
                    self.redMax.setValue(globals.redMax)
                    self.greenMin.setValue(globals.greenMin)
                    self.greenMax.setValue(globals.greenMax)
                    self.blueMin.setValue(globals.blueMin)
                    self.blueMax.setValue(globals.blueMax)
                self.brightness.setValue(globals.Brightness)
                self.redMin.setValue(globals.redMin)
                self.redMax.setValue(globals.redMax)
                self.greenMin.setValue(globals.greenMin)
                self.greenMax.setValue(globals.greenMax)
                self.blueMin.setValue(globals.blueMin)
                self.blueMax.setValue(globals.blueMax)
            else:
                pass
        elif button.text() == "Load Green Parameters":
            if button.isChecked():
                with open("greenparameters.txt") as f:
                    self.brightness.setValue(globals.Brightness)
                    self.redMin.setValue(globals.redMin)
                    self.redMax.setValue(globals.redMax)
                    self.greenMin.setValue(globals.greenMin)
                    self.greenMax.setValue(globals.greenMax)
                    self.blueMin.setValue(globals.blueMin)
                    self.blueMax.setValue(globals.blueMax)
                self.brightness.setValue(globals.Brightness)
                self.redMin.setValue(globals.redMin)
                self.redMax.setValue(globals.redMax)
                self.greenMin.setValue(globals.greenMin)
                self.greenMax.setValue(globals.greenMax)
                self.blueMin.setValue(globals.blueMin)
                self.blueMax.setValue(globals.blueMax)
            else:
                pass
    # -------------------------------------------------------------------------- #

