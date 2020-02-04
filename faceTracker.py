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
import copy


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
        if data is None:
            pass
        else:
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
        if globals.filterOption == 0:
            self.image = self.get_qimage(image_data)
        else:
            img = cv2.imread(str(globals.image_filepath))
            data = cv2.resize(img,(640,480))
                        
            # get info from track bar and apply to result
            rMin = globals.rMin
            rMax = globals.rMax
            gMin = globals.gMin
            gMax = globals.gMax
            bMin = globals.bMin
            bMax = globals.bMax
            alpha = globals.Brightness
            beta = globals.contrast
            # generate threshold array
            lower = np.array([bMin, gMin, rMin])
            upper = np.array([bMax, gMax, rMax])
            
            mask = cv2.inRange(data, lower, upper)
            mask = cv2.erode(mask, None, iterations=2)
            mask = cv2.dilate(mask, None, iterations=2)

            new_image = cv2.convertScaleAbs(data, alpha=alpha, beta=beta)
            maskedImage = cv2.bitwise_and(data, new_image, mask=mask)

            clone_img = copy.copy(data)

            cnts = cv2.findContours(mask.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)[-2]
            center = None
            # only proceed if at least one contour was found
            if len(cnts) > 0:
                # find the largest contour in the mask, then use
                # it to compute the minimum enclosing circle and
                # centroid
                c = max(cnts, key=cv2.contourArea)
                ((x, y), radius) = cv2.minEnclosingCircle(c)
                M = cv2.moments(c)
                center = (int(M["m10"] / M["m00"]), int(M["m01"] / M["m00"]))

                # only proceed if the radius meets a minimum size
                if radius > 10:
                    # draw the circle and centroid on the frame,
                    # then update the list of tracked points
                    cv2.circle(clone_img, (int(x), int(y)), int(radius), (0, 255, 255), 2)
                    cv2.circle(clone_img, center, 5, (0, 0, 255), -1)

                     # font
                    font = cv2.FONT_HERSHEY_SIMPLEX 

                    # org 
                    org = (50, 50) 

                    # fontScale 
                    fontScale = 1

                    # Blue color in BGR 
                    color = (255, 0, 0) 

                    # Line thickness of 2 px 
                    thickness = 2

                    # Using cv2.putText() method 
                    image = cv2.putText(clone_img,'X: ' + str(round(x,2)) + " Y: " + str(round(y,2)), org, font,
                                       fontScale, color, thickness, cv2.LINE_AA)
            self.image = self.get_qimage(clone_img)
            k = cv2.waitKey(5) & 0xFF
            if k == 27:
                pass

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
