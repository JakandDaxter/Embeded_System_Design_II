import cv2
import numpy as np
img = cv2.imread('../images/rgbBall-1.jpg',cv2.IMREAD_GRAYSCALE)
sobelH = cv2.Sobel(img,cv2.CV_64F,1,0,ksize=5)
sobelV = cv2.Sobel(img,cv2.CV_64F,0,1,ksize=5)

cv2.imshow('Original',img)
cv2.imshow('Sobel - Horizontal',sobelH)
cv2.imshow('Sobel - Vertical',sobelV)

cv2.waitKey()