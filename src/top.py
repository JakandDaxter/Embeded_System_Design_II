import sys
from PyQt4.QtGui import *
from PyQt4.QtCore import *
from faceTracker import *
from calibration import *
from globals import globals


# main window class that holds everything
class MainWindow(QMainWindow):
    def __init__(self):
        super(MainWindow, self).__init__()

        self.setWindowTitle("Tennis Ball Detection")
        self.settings = QSettings("RIT", "Aliana")

            # instantiate the dock widgets
        self.faceTracker = FaceTrackerHolder(self)
        self.calibration = Calibration(self)

        # load in the docks
        self.setupDocks()

        # load in the style sheet
        styleFile = "../styleSheet.txt"
        with open(styleFile, "r") as fh:
            self.setStyleSheet(fh.read())

        # restore dock locations
        if self.settings.value("state"):
            self.restoreGeometry(self.settings.value("geometry").toByteArray())
            self.restoreState(self.settings.value("state").toByteArray())
            self.move(self.settings.value("windowPos", QVariant(QPoint(40, 40))).toPoint())
            self.resize(self.settings.value("windowSize", QVariant(QSize(400, 400))).toSize())
            self.setWindowState(Qt.WindowState(self.settings.value("windowState").toInt()[0]))

    def setupDocks(self):

        bar = self.menuBar()
        file = bar.addMenu("File")
        file.addAction("Upload")
        file.triggered[QAction].connect(self.processtrigger)

        self.faceTrackerDock = QDockWidget(self)
        self.faceTrackerDock.setWidget(self.faceTracker)
        self.faceTrackerDock.setWindowTitle("Image")
        self.faceTrackerDock.setObjectName("Image")
        self.faceTrackerDock.setContentsMargins(0, 0, 0, 0)
        self.faceTrackerDock.setFeatures(QDockWidget.AllDockWidgetFeatures)
        self.faceTrackerDock.setAllowedAreas(Qt.AllDockWidgetAreas)
        self.addDockWidget(Qt.LeftDockWidgetArea, self.faceTrackerDock)

        self.calibrationDock = QDockWidget(self)
        self.calibrationDock.setWidget(self.calibration)
        self.calibrationDock.setWindowTitle("Filter")
        self.calibrationDock.setObjectName("Filter")
        self.calibrationDock.setContentsMargins(0, 0, 0, 0)
        self.calibrationDock.setFeatures(QDockWidget.AllDockWidgetFeatures)
        self.calibrationDock.setAllowedAreas(Qt.AllDockWidgetAreas)
        self.addDockWidget(Qt.LeftDockWidgetArea, self.calibrationDock)

        DOCKOPTIONS = QMainWindow.AllowTabbedDocks
        DOCKOPTIONS = DOCKOPTIONS | QMainWindow.AllowNestedDocks
        DOCKOPTIONS = DOCKOPTIONS | QMainWindow.AnimatedDocks
        self.setDockOptions(DOCKOPTIONS)
        self.setTabPosition(Qt.AllDockWidgetAreas, QTabWidget.North)

        # layout = QHBoxLayout()
        # bar = self.menuBar()
        # file = bar.addMenu("File")

    def closeEvent(self, event):
        self.settings.setValue('geometry', self.saveGeometry())
        self.settings.setValue('state', self.saveState())
        self.settings.setValue("windowState", QVariant(self.windowState()))
        self.settings.setValue("windowSize", QVariant(self.size()))
        self.settings.setValue("windowPos", QVariant(self.pos()))
        self.settings.sync()
        QMainWindow.closeEvent(self, event)

    def processtrigger(self):
        fileName = QtGui.QFileDialog.getOpenFileName(None, "Enter Filename.", ".jpg", "(*.jpg)")
        if not fileName:
            print('Could not open or find the image: ', str(fileName))
            pass
        else:
            globals.image_filepath = fileName
# start of the program that instantiates a MainWindow class
def main():
    app = QApplication(sys.argv)
    mainWindow = MainWindow()
    mainWindow.show()
    sys.exit(app.exec_())


if __name__ == '__main__':
    main()
