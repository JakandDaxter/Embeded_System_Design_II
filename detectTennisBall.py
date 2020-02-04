# Dr. Kaputa
# RIT CAST ESD II

import cv2
import numpy as np
import copy

img = cv2.imread('./images/blueBall.jpg')
small_img = cv2.resize(img, (640, 480))


def nothing():
    pass


# Creating a windows for later use
cv2.namedWindow('Threshold')

cv2.createTrackbar('red min', 'Threshold', 0, 255, nothing)
cv2.createTrackbar('red max', 'Threshold', 0, 255, nothing)
cv2.createTrackbar('green min', 'Threshold', 0, 255, nothing)
cv2.createTrackbar('green max', 'Threshold', 0, 255, nothing)
cv2.createTrackbar('blue min', 'Threshold', 0, 255, nothing)
cv2.createTrackbar('blue max', 'Threshold', 0, 255, nothing)
cv2.createTrackbar('Brightness', 'Threshold', 1, 3, nothing)
cv2.createTrackbar('Contrast', 'Threshold', 0, 100, nothing)

while 1:
    # get info from track bar and apply to result
    rMin = cv2.getTrackbarPos('red min', 'Threshold')
    rMax = cv2.getTrackbarPos('red max', 'Threshold')
    gMin = cv2.getTrackbarPos('green min', 'Threshold')
    gMax = cv2.getTrackbarPos('green max', 'Threshold')
    bMin = cv2.getTrackbarPos('blue min', 'Threshold')
    bMax = cv2.getTrackbarPos('blue max', 'Threshold')
    alpha = cv2.getTrackbarPos('Brightness', 'Threshold')
    beta = cv2.getTrackbarPos('Contrast', 'Threshold')

    # generate threshold array
    lower = np.array([bMin, gMin, rMin])
    upper = np.array([bMax, gMax, rMax])

    mask = cv2.inRange(small_img, lower, upper)
    mask = cv2.erode(mask, None, iterations=2)
    mask = cv2.dilate(mask, None, iterations=2)

    new_image = cv2.convertScaleAbs(small_img, alpha=alpha, beta=beta)
    maskedImage = cv2.bitwise_and(small_img, new_image, mask=mask)

    cv2.imshow('Mask', mask)
    cv2.imshow('Masked Image', maskedImage)
    cv2.imshow('New Image', new_image)

    clone_img = copy.copy(small_img)

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

    cv2.imshow('Result', clone_img)
    k = cv2.waitKey(5) & 0xFF
    if k == 27:
        break

cv2.destroyAllWindows()