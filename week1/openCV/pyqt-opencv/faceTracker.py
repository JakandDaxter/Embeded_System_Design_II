import sys
from os import path
import cv2

import numpy as np
import PyQt4.QtGui as QtWidgets
from PyQt4 import QtCore
from PyQt4 import QtGui
from globals import globals

class RecordVideo(QtCore.QObject):
    image_data = QtCore.pyqtSignal(np.ndarray)

    def __init__(self, camera_port=0, parent=None):
        super(RecordVideo, self).__init__()
        #self.camera = cv2.VideoCapture(camera_port)
        
        #if (self.camera.isOpened()== False): 
        #  print("Error opening video stream or file")
 
 
        self.timer = QtCore.QBasicTimer()

    def start_recording(self):
        self.timer.start(0, self)

    def timerEvent(self, event):
        if (event.timerId() != self.timer.timerId()):
            return

        data = cv2.imread('../images/blueBall.jpg')
        #read, data = self.camera.read()
        #if read:
        self.image_data.emit(data)

class FaceTracker(QtWidgets.QWidget):
    def __init__(self, parent=None):
        super(FaceTracker, self).__init__()
        script_dir = path.dirname(path.realpath(__file__))
        cascade_filepath = path.join(script_dir,
                                  'data',
                                  'haar.xml')
        haar_cascade_filepath = path.abspath(cascade_filepath)
        self.classifier = cv2.CascadeClassifier(haar_cascade_filepath)
        self.image = QtGui.QImage()
        self._red = (0, 0, 255)
        self._width = 2
        self._min_size = (30, 30)
        self.dockWidth = self.width()
        self.dockHeight = self.height()
         
    def detect_faces(self, image):
        gray_image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
        gray_image = cv2.equalizeHist(gray_image)

        faces = self.classifier.detectMultiScale(gray_image,
                                                 scaleFactor=1.3,
                                                 minNeighbors=4,
                                                 flags=cv2.CASCADE_SCALE_IMAGE,
                                                 minSize=self._min_size)
        return faces

    def image_data_slot(self, image_data):
        faces = self.detect_faces(image_data)
        height, width, colors = image_data.shape
        for (x, y, w, h) in faces:
            cv2.rectangle(image_data,
                          (x, y),
                          (x+w, y+h),
                          self._red,
                          self._width)
            
            globals.x = ((x+(w/2))-float(width/2))
            globals.y = ((y+(h/2))-float(height/2))
            
            theta = 0.5 * (globals.FOV * (np.pi/180))
            globals.phi_face = np.arctan((2*globals.x*np.tan(theta))/(width))
            
            #print "x: " + str(globals.x)
            #print "y: " + str(globals.y)
            print "phi: " + str(globals.phi_face*(180/np.pi))
            
            
        self.image = self.get_qimage(image_data)
        
        #if self.image.size() != self.size():
        #    self.setFixedSize(self.image.size())

        self.update()

    def get_qimage(self, image):
        height, width, colors = image.shape
        bytesPerLine = 3 * width
        QImage = QtGui.QImage

        image = QImage(image.data,
                       width,
                       height,
                       bytesPerLine,
                       QImage.Format_RGB888)


        image = image.scaledToHeight(self.dockHeight)
        image = image.scaledToWidth(self.dockWidth)
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
        fp = haarcascade_filepath
        self.face_detection_widget = FaceTracker(fp)

        self.record_video = RecordVideo()

        image_data_slot = self.face_detection_widget.image_data_slot
        self.record_video.image_data.connect(image_data_slot)

        layout = QtWidgets.QVBoxLayout()

        layout.addWidget(self.face_detection_widget)
        #self.run_button = QtWidgets.QPushButton('Start')
        #layout.addWidget(self.run_button)

        #self.run_button.clicked.connect(self.record_video.start_recording)
        self.record_video.start_recording()
        self.setLayout(layout)