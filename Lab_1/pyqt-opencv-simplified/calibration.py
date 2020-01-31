import sys
from PyQt4 import QtGui, QtCore

from globals import globals


class Calibration(QtGui.QWidget):
    def __init__(self, parent=None):
        super(Calibration, self).__init__(parent)

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

        self.labelFaceTrackingWidthTitle = QtGui.QLabel(self)
        self.labelFaceTrackingWidthTitle.setText("Face Tracking Width")
        self.faceTrackingWidth = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.faceTrackingWidth.setSingleStep(1)
        self.faceTrackingWidth.setMinimum(1)
        self.faceTrackingWidth.setMaximum(100)
        self.faceTrackingWidth.valueChanged[int].connect(self.faceTrackingWidthChanged)
        self.faceTrackingWidthEdit = QtGui.QLineEdit(self)
        self.faceTrackingWidthEdit.returnPressed.connect(self.faceTrackingWidthEditChanged)
        self.faceTrackingWidthGroup = QtGui.QGroupBox()
        layoutFaceTrackingWidth = QtGui.QHBoxLayout()
        layoutFaceTrackingWidth.addWidget(self.labelFaceTrackingWidthTitle)
        layoutFaceTrackingWidth.addWidget(self.faceTrackingWidthEdit)
        layoutFaceTrackingWidthVertical = QtGui.QVBoxLayout()
        layoutFaceTrackingWidthVertical.addLayout(layoutFaceTrackingWidth)
        layoutFaceTrackingWidthVertical.addWidget(self.faceTrackingWidth)
        self.faceTrackingWidthGroup.setLayout(layoutFaceTrackingWidthVertical)

        self.labelFaceTrackingHeightTitle = QtGui.QLabel(self)
        self.labelFaceTrackingHeightTitle.setText("Face Tracking Height")
        self.faceTrackingHeight = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.faceTrackingHeight.setSingleStep(1)
        self.faceTrackingHeight.setMinimum(1)
        self.faceTrackingHeight.setMaximum(100)
        self.faceTrackingHeight.valueChanged[int].connect(self.faceTrackingHeightChanged)
        self.faceTrackingHeightEdit = QtGui.QLineEdit(self)
        self.faceTrackingHeightEdit.returnPressed.connect(self.faceTrackingHeightEditChanged)
        self.faceTrackingHeightGroup = QtGui.QGroupBox()
        layoutFaceTrackingHeight = QtGui.QHBoxLayout()
        layoutFaceTrackingHeight.addWidget(self.labelFaceTrackingHeightTitle)
        layoutFaceTrackingHeight.addWidget(self.faceTrackingHeightEdit)
        layoutFaceTrackingHeightVertical = QtGui.QVBoxLayout()
        layoutFaceTrackingHeightVertical.addLayout(layoutFaceTrackingHeight)
        layoutFaceTrackingHeightVertical.addWidget(self.faceTrackingHeight)
        self.faceTrackingHeightGroup.setLayout(layoutFaceTrackingHeightVertical)

        self.labelFaceTrackingHysteresisTitle = QtGui.QLabel(self)
        self.labelFaceTrackingHysteresisTitle.setText("Face Tracking Hysteresis")
        self.faceTrackingHysteresis = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.faceTrackingHysteresis.setSingleStep(1)
        self.faceTrackingHysteresis.setMinimum(1)
        self.faceTrackingHysteresis.setMaximum(100)
        self.faceTrackingHysteresis.valueChanged[int].connect(self.faceTrackingHysteresisChanged)
        self.faceTrackingHysteresisEdit = QtGui.QLineEdit(self)
        self.faceTrackingHysteresisEdit.returnPressed.connect(self.faceTrackingHysteresisEditChanged)
        self.faceTrackingHysteresisGroup = QtGui.QGroupBox()
        layoutFaceTrackingHysteresis = QtGui.QHBoxLayout()
        layoutFaceTrackingHysteresis.addWidget(self.labelFaceTrackingHysteresisTitle)
        layoutFaceTrackingHysteresis.addWidget(self.faceTrackingHysteresisEdit)
        layoutFaceTrackingHysteresisVertical = QtGui.QVBoxLayout()
        layoutFaceTrackingHysteresisVertical.addLayout(layoutFaceTrackingHysteresis)
        layoutFaceTrackingHysteresisVertical.addWidget(self.faceTrackingHysteresis)
        self.faceTrackingHysteresisGroup.setLayout(layoutFaceTrackingHysteresisVertical)

        self.labelHysteresisTitle = QtGui.QLabel(self)
        self.labelHysteresisTitle.setText("Hysteresis")
        self.hysteresis = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.hysteresis.setSingleStep(1)
        self.hysteresis.setMinimum(1)
        self.hysteresis.setMaximum(100)
        self.hysteresis.valueChanged[int].connect(self.hysteresisChanged)
        self.hysteresisEdit = QtGui.QLineEdit(self)
        self.hysteresisEdit.returnPressed.connect(self.hysteresisEditChanged)
        self.hysteresisGroup = QtGui.QGroupBox()
        layoutHysteresis = QtGui.QHBoxLayout()
        layoutHysteresis.addWidget(self.labelHysteresisTitle)
        layoutHysteresis.addWidget(self.hysteresisEdit)
        layoutHysteresisVertical = QtGui.QVBoxLayout()
        layoutHysteresisVertical.addLayout(layoutHysteresis)
        layoutHysteresisVertical.addWidget(self.hysteresis)
        self.hysteresisGroup.setLayout(layoutHysteresisVertical)

        self.labelOffsetTitle = QtGui.QLabel(self)
        self.labelOffsetTitle.setText("Offset")
        self.offset = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.offset.setSingleStep(1)
        self.offset.setMinimum(1)
        self.offset.setMaximum(100)
        self.offset.valueChanged[int].connect(self.offsetChanged)
        self.offsetEdit = QtGui.QLineEdit(self)
        self.offsetEdit.returnPressed.connect(self.offsetEditChanged)
        self.offsetGroup = QtGui.QGroupBox()
        layoutOffset = QtGui.QHBoxLayout()
        layoutOffset.addWidget(self.labelOffsetTitle)
        layoutOffset.addWidget(self.offsetEdit)
        layoutOffsetVertical = QtGui.QVBoxLayout()
        layoutOffsetVertical.addLayout(layoutOffset)
        layoutOffsetVertical.addWidget(self.offset)
        self.offsetGroup.setLayout(layoutOffsetVertical)

        self.labelZoneWidthTitle = QtGui.QLabel(self)
        self.labelZoneWidthTitle.setText("Zone Width")
        self.zoneWidth = QtGui.QSlider(QtCore.Qt.Horizontal, self)
        self.zoneWidth.setSingleStep(1)
        self.zoneWidth.setMinimum(1)
        self.zoneWidth.setMaximum(100)
        self.zoneWidth.valueChanged[int].connect(self.zoneWidthChanged)
        self.zoneWidthEdit = QtGui.QLineEdit(self)
        self.zoneWidthEdit.returnPressed.connect(self.zoneWidthEditChanged)
        self.zoneWidthGroup = QtGui.QGroupBox()
        layoutZoneWidth = QtGui.QHBoxLayout()
        layoutZoneWidth.addWidget(self.labelZoneWidthTitle)
        layoutZoneWidth.addWidget(self.zoneWidthEdit)
        layoutZoneWidthVertical = QtGui.QVBoxLayout()
        layoutZoneWidthVertical.addLayout(layoutZoneWidth)
        layoutZoneWidthVertical.addWidget(self.zoneWidth)
        self.zoneWidthGroup.setLayout(layoutZoneWidthVertical)

        self.loadImageButton = QtGui.QPushButton("Load Image")
        self.loadImageButton.setSizePolicy(QtGui.QSizePolicy.Expanding, QtGui.QSizePolicy.Expanding)
        self.loadImageButton.clicked[bool].connect(self.loadImageButtonClicked)

        self.loadFileButton = QtGui.QPushButton("Load File")
        self.loadFileButton.setSizePolicy(QtGui.QSizePolicy.Expanding, QtGui.QSizePolicy.Expanding)
        self.loadFileButton.clicked[bool].connect(self.loadFileButtonClicked)

        self.saveFileButton = QtGui.QPushButton("Save File")
        self.saveFileButton.setSizePolicy(QtGui.QSizePolicy.Expanding, QtGui.QSizePolicy.Expanding)
        self.saveFileButton.clicked[bool].connect(self.saveFileButtonClicked)

        layout2 = QtGui.QHBoxLayout()
        layout2.addWidget(self.loadImageButton)
        layout2.addWidget(self.loadFileButton)
        layout2.addWidget(self.saveFileButton)
        layout = QtGui.QVBoxLayout()
        layoutEncoder = QtGui.QVBoxLayout()
        layoutUltrasonic = QtGui.QVBoxLayout()
        layout3 = QtGui.QHBoxLayout()
        layout.addWidget(self.brightnessGroup)
        layout.addWidget(self.faceTrackingWidthGroup)
        layout.addWidget(self.faceTrackingHeightGroup)
        layout.addWidget(self.faceTrackingHysteresisGroup)
        layout.addWidget(self.hysteresisGroup)
        layout.addWidget(self.zoneWidthGroup)

        layout.addLayout(layout2)
        self.setLayout(layout)

        self.brightness.setValue(globals.Brightness)
        self.faceTrackingWidth.setValue(globals.faceTrackingWidth * 100)
        self.faceTrackingHeight.setValue(globals.faceTrackingHeight * 100)
        self.faceTrackingHysteresis.setValue(globals.faceTrackingHysteresis * 100)
        self.hysteresis.setValue(globals.hysteresis * 100)
        self.offset.setValue(globals.offset * 100)
        self.zoneWidth.setValue(globals.zoneWidth * 100)

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

    def faceTrackingWidthChanged(self, value):
        globals.faceTrackingWidth = value / 100.0
        self.faceTrackingWidthEdit.setText(str(value / 100.0))

    def faceTrackingWidthEditChanged(self):
        globals.faceTrackingWidth = float(self.faceTrackingWidthEdit.text())
        self.faceTrackingWidth.setValue(globals.faceTrackingWidth * 100.0)

    def faceTrackingHeightChanged(self, value):
        globals.faceTrackingHeight = value / 100.0
        self.faceTrackingHeightEdit.setText(str(value / 100.0))

    def faceTrackingHeightEditChanged(self):
        globals.faceTrackingHeight = float(self.faceTrackingHeightEdit.text())
        self.faceTrackingHeight.setValue(globals.faceTrackingHeight * 100.0)

    def faceTrackingHysteresisChanged(self, value):
        globals.faceTrackingHysteresis = value / 100.0
        self.faceTrackingHysteresisEdit.setText(str(value / 100.0))

    def faceTrackingHysteresisEditChanged(self):
        globals.faceTrackingHysteresis = float(self.faceTrackingHysteresisEdit.text())
        self.faceTrackingHysteresis.setValue(globals.faceTrackingHysteresis * 100.0)

    def hysteresisChanged(self, value):
        globals.hysteresis = value / 100.0
        self.hysteresisEdit.setText(str(value / 100.0))

    def hysteresisEditChanged(self):
        globals.hysteresis = float(self.hysteresisEdit.text())
        self.hysteresis.setValue(globals.Hysteresis * 100.0)

    def offsetChanged(self, value):
        globals.offset = value / 100.0
        self.offsetEdit.setText(str(value / 100.0))

    def offsetEditChanged(self):
        globals.offset = float(self.offsetEdit.text())
        self.offset.setValue(globals.offset * 100.0)

    def zoneWidthChanged(self, value):
        globals.zoneWidth = value / 100.0
        self.zoneWidthEdit.setText(str(value / 100.0))

    def zoneWidthEditChanged(self):
        globals.zoneWidth = float(self.zoneWidthEdit.text())
        self.zoneWidth.setValue(globals.zoneWidth * 100.0)

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
                globals.comPort = int(f.readline().split("= ")[1])
                globals.baudRate = int(f.readline().split("= ")[1])
                globals.Brightness = int(f.readline().split("= ")[1])
                globals.phi_face = float(f.readline().split("= ")[1])
                globals.zone = float(f.readline().split("= ")[1])
                globals.FOV = float(f.readline().split("= ")[1])
                globals.faceTrackingWidth = float(f.readline().split("= ")[1])
                globals.faceTrackingHeight = float(f.readline().split("= ")[1])
                globals.faceTrackingHysteresis = float(f.readline().split("= ")[1])
                globals.hysteresis = float(f.readline().split("= ")[1])
                globals.offset = float(f.readline().split("= ")[1])
                globals.zoneWidth = float(f.readline().split("= ")[1])
            self.brightness.setValue(globals.Brightness)
            self.faceTrackingWidth.setValue(globals.faceTrackingWidth * 100)
            self.faceTrackingHeight.setValue(globals.faceTrackingHeight * 100)
            self.faceTrackingHysteresis.setValue(globals.faceTrackingHysteresis * 100)
            self.hysteresis.setValue(globals.hysteresis * 100)
            self.offset.setValue(globals.offset * 100)
            self.zoneWidth.setValue(globals.zoneWidth * 100)

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
            f.write("comPort                   = " + str(globals.comPort) + "\n")
            f.write("baudRate                  = " + str(globals.baudRate) + "\n")
            f.write("Brightness                = " + str(globals.Brightness) + "\n")
            f.write("phi_face                  = " + str(globals.phi_face) + "\n")
            f.write("zone                      = " + str(globals.zone) + "\n")
            f.write("FOV                       = " + str(globals.FOV) + "\n")
            f.write("faceTrackingWidth         = " + str(globals.faceTrackingWidth) + "\n")
            f.write("faceTrackingHeight        = " + str(globals.faceTrackingHeight) + "\n")
            f.write("faceTrackingHysteresis    = " + str(globals.faceTrackingHysteresis) + "\n")
            f.write("hysteresis                = " + str(globals.hysteresis) + "\n")
            f.write("offset                    = " + str(globals.offset) + "\n")
            f.write("zoneWidth                 = " + str(globals.zoneWidth))
