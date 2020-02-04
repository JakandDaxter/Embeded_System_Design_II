import sys
from PyQt4 import QtGui, QtCore
from globals import globals


class Calibration(QtGui.QWidget):
    def __init__(self, parent=None):
        super(Calibration, self).__init__(parent)

        self.labelrMinTitle = QtGui.QLabel(self)
        self.labelrMinTitle.setText("rMin")
        self.rMin = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.rMin.setSingleStep(1)
        self.rMin.setMinimum(0)
        self.rMin.setMaximum(255)
        self.rMin.valueChanged[int].connect(self.rMinChanged)
        self.rMinEdit = QtGui.QLineEdit(self)
        self.rMinEdit.returnPressed.connect(self.rMinEditChanged)
        self.rMinGroup = QtGui.QGroupBox()
        layoutrMin = QtGui.QHBoxLayout()
        layoutrMin.addWidget(self.labelrMinTitle)
        layoutrMin.addWidget(self.rMinEdit)
        layoutrMinVertical = QtGui.QVBoxLayout()
        layoutrMinVertical.addLayout(layoutrMin)
        layoutrMinVertical.addWidget(self.rMin)
        self.rMinGroup.setLayout(layoutrMinVertical)

        self.labelrMaxTitle = QtGui.QLabel(self)
        self.labelrMaxTitle.setText("rMax")
        self.rMax = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.rMax.setSingleStep(1)
        self.rMax.setMinimum(0)
        self.rMax.setMaximum(255)
        self.rMax.valueChanged[int].connect(self.rMaxChanged)
        self.rMaxEdit = QtGui.QLineEdit(self)
        self.rMaxEdit.returnPressed.connect(self.rMaxEditChanged)
        self.rMaxGroup = QtGui.QGroupBox()
        layoutrMax = QtGui.QHBoxLayout()
        layoutrMax.addWidget(self.labelrMaxTitle)
        layoutrMax.addWidget(self.rMaxEdit)
        layoutrMaxVertical = QtGui.QVBoxLayout()
        layoutrMaxVertical.addLayout(layoutrMax)
        layoutrMaxVertical.addWidget(self.rMax)
        self.rMaxGroup.setLayout(layoutrMaxVertical)

        self.labelgMinTitle = QtGui.QLabel(self)
        self.labelgMinTitle.setText("gMin")
        self.gMin = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.gMin.setSingleStep(1)
        self.gMin.setMinimum(0)
        self.gMin.setMaximum(255)
        self.gMin.valueChanged[int].connect(self.gMinChanged)
        self.gMinEdit = QtGui.QLineEdit(self)
        self.gMinEdit.returnPressed.connect(self.gMinEditChanged)
        self.gMinGroup = QtGui.QGroupBox()
        layoutgMin = QtGui.QHBoxLayout()
        layoutgMin.addWidget(self.labelgMinTitle)
        layoutgMin.addWidget(self.gMinEdit)
        layoutgMinVertical = QtGui.QVBoxLayout()
        layoutgMinVertical.addLayout(layoutgMin)
        layoutgMinVertical.addWidget(self.gMin)
        self.gMinGroup.setLayout(layoutgMinVertical)

        self.labelgMaxTitle = QtGui.QLabel(self)
        self.labelgMaxTitle.setText("gMax")
        self.gMax = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.gMax.setSingleStep(1)
        self.gMax.setMinimum(0)
        self.gMax.setMaximum(255)
        self.gMax.valueChanged[int].connect(self.gMaxChanged)
        self.gMaxEdit = QtGui.QLineEdit(self)
        self.gMaxEdit.returnPressed.connect(self.gMaxEditChanged)
        self.gMaxGroup = QtGui.QGroupBox()
        layoutgMax = QtGui.QHBoxLayout()
        layoutgMax.addWidget(self.labelgMaxTitle)
        layoutgMax.addWidget(self.gMaxEdit)
        layoutgMaxVertical = QtGui.QVBoxLayout()
        layoutgMaxVertical.addLayout(layoutgMax)
        layoutgMaxVertical.addWidget(self.gMax)
        self.gMaxGroup.setLayout(layoutgMaxVertical)

        self.labelbMinTitle = QtGui.QLabel(self)
        self.labelbMinTitle.setText("bMin")
        self.bMin = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.bMin.setSingleStep(1)
        self.bMin.setMinimum(0)
        self.bMin.setMaximum(255)
        self.bMin.valueChanged[int].connect(self.bMinChanged)
        self.bMinEdit = QtGui.QLineEdit(self)
        self.bMinEdit.returnPressed.connect(self.bMinEditChanged)
        self.bMinGroup = QtGui.QGroupBox()
        layoutbMin = QtGui.QHBoxLayout()
        layoutbMin.addWidget(self.labelbMinTitle)
        layoutbMin.addWidget(self.bMinEdit)
        layoutbMinVertical = QtGui.QVBoxLayout()
        layoutbMinVertical.addLayout(layoutbMin)
        layoutbMinVertical.addWidget(self.bMin)
        self.bMinGroup.setLayout(layoutbMinVertical)

        self.labelbMaxTitle = QtGui.QLabel(self)
        self.labelbMaxTitle.setText("bMax")
        self.bMax = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.bMax.setSingleStep(1)
        self.bMax.setMinimum(0)
        self.bMax.setMaximum(255)
        self.bMax.valueChanged[int].connect(self.bMaxChanged)
        self.bMaxEdit = QtGui.QLineEdit(self)
        self.bMaxEdit.returnPressed.connect(self.bMaxEditChanged)
        self.bMaxGroup = QtGui.QGroupBox()
        layoutbMax = QtGui.QHBoxLayout()
        layoutbMax.addWidget(self.labelbMaxTitle)
        layoutbMax.addWidget(self.bMaxEdit)
        layoutbMaxVertical = QtGui.QVBoxLayout()
        layoutbMaxVertical.addLayout(layoutbMax)
        layoutbMaxVertical.addWidget(self.bMax)
        self.bMaxGroup.setLayout(layoutbMaxVertical)

        self.labelBrightnessTitle = QtGui.QLabel(self)
        self.labelBrightnessTitle.setText("Brightness")
        self.brightness = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.brightness.setSingleStep(1)
        self.brightness.setMinimum(1)
        self.brightness.setMaximum(3)
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

        self.labelContrastTitle = QtGui.QLabel(self)
        self.labelContrastTitle.setText("Contrast")
        self.Contrast = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.Contrast.setSingleStep(1)
        self.Contrast.setMinimum(0)
        self.Contrast.setMaximum(100)
        self.Contrast.valueChanged[int].connect(self.ContrastChanged)
        self.ContrastEdit = QtGui.QLineEdit(self)
        self.ContrastEdit.returnPressed.connect(self.ContrastEditChanged)
        self.ContrastGroup = QtGui.QGroupBox()
        layoutContrast = QtGui.QHBoxLayout()
        layoutContrast.addWidget(self.labelContrastTitle)
        layoutContrast.addWidget(self.ContrastEdit)
        layoutContrastVertical = QtGui.QVBoxLayout()
        layoutContrastVertical.addLayout(layoutContrast)
        layoutContrastVertical.addWidget(self.Contrast)
        self.ContrastGroup.setLayout(layoutContrastVertical)

        self.filterOP = QtGui.QPushButton("Filter Activation", self)
        self.filterOP.setCheckable(True)
        self.filterOP.clicked[bool].connect(self.filters)

        self.radioB = QtGui.QRadioButton("Blue Detection")
        self.radioB.toggled.connect(lambda: self.btnstate(self.radioB))

        self.radioG = QtGui.QRadioButton("Green Detection")
        self.radioG.toggled.connect(lambda: self.btnstate(self.radioG))

        # self.loadImageButton = QtGui.QPushButton("Load Image")
        # self.loadImageButton.setSizePolicy(QtGui.QSizePolicy.Expanding, QtGui.QSizePolicy.Expanding)
        # self.loadImageButton.clicked[bool].connect(self.loadImageButtonClicked)

        self.loadFileButton = QtGui.QPushButton("Load File")
        self.loadFileButton.setSizePolicy(QtGui.QSizePolicy.Expanding, QtGui.QSizePolicy.Expanding)
        self.loadFileButton.clicked[bool].connect(self.loadFileButtonClicked)

        self.saveFileButton = QtGui.QPushButton("Save File")
        self.saveFileButton.setSizePolicy(QtGui.QSizePolicy.Expanding, QtGui.QSizePolicy.Expanding)
        self.saveFileButton.clicked[bool].connect(self.saveFileButtonClicked)

        layout2 = QtGui.QHBoxLayout()
        # layout2.addWidget(self.loadImageButton)
        layout2.addWidget(self.loadFileButton)
        layout2.addWidget(self.saveFileButton)
        layout3 = QtGui.QHBoxLayout()
        layout3.addWidget(self.radioB)
        layout3.addWidget(self.radioG)
        layout3.addWidget(self.filterOP)
        layout = QtGui.QVBoxLayout()
        layout.addWidget(self.brightnessGroup)
        layout.addWidget(self.ContrastGroup)
        layout.addWidget(self.rMinGroup)
        layout.addWidget(self.rMaxGroup)
        layout.addWidget(self.gMinGroup)
        layout.addWidget(self.gMaxGroup)
        layout.addWidget(self.bMinGroup)
        layout.addWidget(self.bMaxGroup)

        layout.addLayout(layout3)
        layout.addLayout(layout2)
        self.setLayout(layout)

        self.brightness.setValue(1)
        self.rMin.setValue(1)
        self.rMax.setValue(100)
        self.bMin.setValue(1)
        self.bMax.setValue(100)
        self.gMin.setValue(1)
        self.gMax.setValue(100)
        self.Contrast.setValue(1)

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

    ###################################################

    def ContrastChanged(self, value):
        globals.contrast = value
        self.ContrastEdit.setText(str(value))

    def ContrastEditChanged(self):
        globals.contrast = int(self.ContrastEdit.text())
        self.Contrast.setValue(globals.contrast)

    ###################################################

    def rMinChanged(self, value):
        globals.rMin = value
        self.rMinEdit.setText(str(value))

    def rMinEditChanged(self):
        globals.rMin = float(self.rMinEdit.text())
        self.rMin.setValue(globals.rMin)

    def rMaxChanged(self, value):
        globals.rMax = value
        self.rMaxEdit.setText(str(value))

    def rMaxEditChanged(self):
        globals.rMax = float(self.rMaxEdit.text())
        self.rMax.setValue(globals.rMax)

    ###############################################################

    def bMinChanged(self, value):
        globals.bMin = value
        self.bMinEdit.setText(str(value))

    def bMinEditChanged(self):
        globals.bMin = float(self.bMinEdit.text())
        self.bMin.setValue(globals.bMin)

    def bMaxChanged(self, value):
        globals.bMax = value
        self.bMaxEdit.setText(str(value))

    def bMaxEditChanged(self):
        globals.bMax = float(self.bMaxEdit.text())
        self.bMax.setValue(globals.bMax)

    ################################################################

    def gMinChanged(self, value):
        globals.gMin = value
        self.gMinEdit.setText(str(value))

    def gMinEditChanged(self):
        globals.gMin = float(self.gMinEdit.text())
        self.gMin.setValue(globals.gMin)

    def gMaxChanged(self, value):
        globals.gMax = value
        self.gMaxEdit.setText(str(value))

    def gMaxEditChanged(self):
        globals.gMax = float(self.gMaxEdit.text())
        self.gMax.setValue(globals.gMax)

    #############################################################

    def filters(self, pressed):
        if pressed:
            self.brightness.setValue(globals.Brightness)
            self.Contrast.setValue(globals.contrast)
            self.rMin.setValue(globals.rMin)
            self.rMax.setValue(globals.rMax)
            self.bMin.setValue(globals.bMin)
            self.bMax.setValue(globals.bMax)
            self.gMin.setValue(globals.gMin)
            self.gMax.setValue(globals.gMax)
            globals.filterOption = 1
        pass

    ################################################################

    def btnstate(self, b):
        if b.text() == "Blue Detection":
            if b.isChecked():
                with open("bluedetection.txt") as f:
                    globals.Brightness = int(f.readline().split("= ")[1])
                    globals.contrast = float(f.readline().split("= ")[1])
                    globals.rMin = float(f.readline().split("= ")[1])
                    globals.rMax = float(f.readline().split("= ")[1])
                    globals.bMin = float(f.readline().split("= ")[1])
                    globals.bMax = float(f.readline().split("= ")[1])
                    globals.gMin = float(f.readline().split("= ")[1])
                    globals.gMax = float(f.readline().split("= ")[1])
                self.brightness.setValue(globals.Brightness)
                self.Contrast.setValue(globals.contrast)
                self.rMin.setValue(globals.rMin)
                self.rMax.setValue(globals.rMax)
                self.bMin.setValue(globals.bMin)
                self.bMax.setValue(globals.bMax)
                self.gMin.setValue(globals.gMin)
                self.gMax.setValue(globals.gMax)
            else:
                pass

        if b.text() == "Green Detection":
            if b.isChecked():
                with open("greendetection.txt") as f:
                    globals.Brightness = int(f.readline().split("= ")[1])
                    globals.contrast = float(f.readline().split("= ")[1])
                    globals.rMin = float(f.readline().split("= ")[1])
                    globals.rMax = float(f.readline().split("= ")[1])
                    globals.bMin = float(f.readline().split("= ")[1])
                    globals.bMax = float(f.readline().split("= ")[1])
                    globals.gMin = float(f.readline().split("= ")[1])
                    globals.gMax = float(f.readline().split("= ")[1])
                self.brightness.setValue(globals.Brightness)
                self.Contrast.setValue(globals.contrast)
                self.rMin.setValue(globals.rMin)
                self.rMax.setValue(globals.rMax)
                self.bMin.setValue(globals.bMin)
                self.bMax.setValue(globals.bMax)
                self.gMin.setValue(globals.gMin)
                self.gMax.setValue(globals.gMax)
            else:
                pass

    ###############################################################################
    # save and load calibration files
    ###############################################################################
    def loadFileButtonClicked(self):
        fileName = QtGui.QFileDialog.getOpenFileName(None, "Enter Filename.", ".txt", "(*.txt)")
        if not fileName:
            print('Could not open or find the image: ', str(fileName))
            pass
        else:
            with open(fileName) as f:
                globals.Brightness = int(f.readline().split("= ")[1])
                globals.contrast = float(f.readline().split("= ")[1])
                globals.rMin = float(f.readline().split("= ")[1])
                globals.rMax = float(f.readline().split("= ")[1])
                globals.bMin = float(f.readline().split("= ")[1])
                globals.bMax = float(f.readline().split("= ")[1])
                globals.gMin = float(f.readline().split("= ")[1])
                globals.gMax = float(f.readline().split("= ")[1])
            self.brightness.setValue(globals.Brightness)
            self.Contrast.setValue(globals.contrast)
            self.rMin.setValue(globals.rMin)
            self.rMax.setValue(globals.rMax)
            self.bMin.setValue(globals.bMin)
            self.bMax.setValue(globals.bMax)
            self.gMin.setValue(globals.gMin)
            self.gMax.setValue(globals.gMax)

    def loadImageButtonClicked(self):
        fileName = QtGui.QFileDialog.getOpenFileName(None, "Enter Filename.", ".jpg", "(*.jpg)")
        if not fileName:
            print('Could not open or find the image: ', str(fileName))
            pass
        else:
            globals.image_filepath = fileName

    def saveFileButtonClicked(self):
        fileName = QtGui.QFileDialog.getSaveFileName(None, "Enter Filename", ".txt", "(*.txt)")
        if fileName == "":
            print('Could not open or find the image: ', str(fileName))
            return
        with open(fileName, "w") as f:
            f.write("Brightness                = " + str(globals.Brightness) + "\n")
            f.write("contrast                  = " + str(globals.contrast) + "\n")
            f.write("rMin                      = " + str(globals.rMin) + "\n")
            f.write("rMax                      = " + str(globals.rMax) + "\n")
            f.write("bMin                      = " + str(globals.bMin) + "\n")
            f.write("bMax                      = " + str(globals.bMax) + "\n")
            f.write("gMin                      = " + str(globals.gMin) + "\n")
            f.write("gMax                      = " + str(globals.gMax))
