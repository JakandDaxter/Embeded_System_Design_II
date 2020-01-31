# Dr. Kaputa
# sample opencv pyqt4 integration

import sys
from os import path
import cv2

import numpy as np
import PyQt4.QtGui as QtWidgets
from PyQt4 import QtCore
from PyQt4 import QtGui
from globals import globals

# class that can either record video or load in a simple image
class RecordVideo(QtCore.QObject):
    image_data = QtCore.pyqtSignal(np.ndarray)

    def __init__(self, camera_port=0, parent=None):
        super(RecordVideo, self).__init__()
        self.timer = QtCore.QBasicTimer()

    def start_recording(self):
        self.timer.start(0, self)

    def timerEvent(self, event):
        if (event.timerId() != self.timer.timerId()):
            return

        data = cv2.imread(str(globals.image_filepath))
        self.image_data.emit(data)

# Widget that is loaded into the dock
class FaceTracker(QtWidgets.QWidget):
    def __init__(self, parent=None):
        super(FaceTracker, self).__init__()
        self.image = QtGui.QImage()
        self.dockWidth = self.width()
        self.dockHeight = self.height()
         
    # this function is called from self.image_data.emit(data) in line 30 when the timer ticks
    def image_data_slot(self, image_data):
        self.image = self.get_qimage(image_data)
        
        # update() calls the paintEvent() function below
        self.update()

    def get_qimage(self, image):
        height, width, colors = image.shape
        bytesPerLine = 3 * width
        QImage = QtGui.QImage

        # parses the opencv image so it can be displayed with pyqt4
        image = QImage(image.data,
                       width,
                       height,
                       bytesPerLine,
                       QImage.Format_RGB888)


        image = image.scaledToHeight(self.dockHeight)
        image = image.scaledToWidth(self.dockWidth)
        
        # opencv is bgr and pyqt4 is rgb
        image = image.rgbSwapped()
        return image

    def paintEvent(self, event):
        painter = QtGui.QPainter(self)
        painter.drawImage(0, 0, self.image)
        self.image = QtGui.QImage()
                
    def resizeEvent(self, event):
        self.dockWidth = self.width()
        self.dockHeight = self.height()

class FaceTrackerHolder(QtWidgets.QWidget):
    def __init__(self, haarcascade_filepath, parent=None):
        super(FaceTrackerHolder, self).__init__()
       
        # instantiate objects
        self.face_detection_widget = FaceTracker()
        self.record_video = RecordVideo()

        # link up record object with display object
        self.record_video.image_data.connect(self.face_detection_widget.image_data_slot)

        # create layout and add in face_detection_widget
        layout = QtWidgets.QVBoxLayout()
        layout.addWidget(self.face_detection_widget)
       
        # start recording or displaying images
        self.record_video.start_recording()
        self.setLayout(layout)