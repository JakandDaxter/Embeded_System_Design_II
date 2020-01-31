from __future__ import print_function
from builtins import input
import cv2
import numpy as np
import argparse

# Read image given by user
parser = argparse.ArgumentParser(description='Code for Changing the contrast and brightness of an image! tutorial.')
parser.add_argument('--input', help='Path to input image.', default='./images/blueBall.jpg')
args = parser.parse_args()
image = cv2.imread(str(args.input))


def nothing():
    pass


# brightnes and contract controlls
cv2.namedWindow('Threshold')
cv2.createTrackbar('Alpha', 'Threshold', 1, 3, nothing)
cv2.createTrackbar('Beta', 'Threshold', 0, 100, nothing)

if image is None:
    print('Could not open or find the image: ', args.input)
    exit(0)
# new_image = np.zeros(image.shape, image.dtype)
alpha = 1.0  # Simple contrast control
beta = 10  # Simple brightness control
# Initialize values
cv2.imshow('Original Image', image)
while 1:
    alpha = cv2.getTrackbarPos('Alpha', 'Threshold')
    beta = cv2.getTrackbarPos('Beta', 'Threshold')
    # Do the operation new_image(i,j) = alpha*image(i,j) + beta
    # Instead of these 'for' loops we could have used simply:
    # new_image = cv.convertScaleAbs(image, alpha=alpha, beta=beta)
    # but we wanted to show you how to access the pixels :)

    new_image = cv2.convertScaleAbs(image, alpha=alpha, beta=beta)
    print(str(new_image))
    # for y in range(image.shape[0]):
    #     for x in range(image.shape[1]):
    #         for c in range(image.shape[2]):
    #             new_image[y, x, c] = np.clip(alpha * image[y, x, c] + beta, 0, 255)
    cv2.imshow('New Image', new_image)

# Wait until user press some key
# cv2.waitKey()
