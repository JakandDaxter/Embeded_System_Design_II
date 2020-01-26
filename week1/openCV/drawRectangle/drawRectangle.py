import cv2
img = cv2.imread('../images/redBall.jpg')
cv2.rectangle(img,(0,0),(100,100),(0,255,0),3)
cv2.imshow('Red Ball',img)
cv2.waitKey()