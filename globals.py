import os
import mmap
import struct

class globals():
    Brightness                = 30
    redMin                    = 1
    redMax                    = 1
    greenMin                  = 1
    greenMax                  = 1
    blueMin                   = 1
    blueMax                   = 1
    startSliders              = 0
    image_filepath            = '../images/blueBall.jpg'

    """ old globals
      comPort                   = 4
      baudRate                  = 115200
      Brightness                = 30
      phi_face                  = 0
      zone                      = 0
      FOV                       = 60
      faceTrackingWidth         = 0.7679448708
      faceTrackingHeight        = 0.62831853
      faceTrackingHysteresis    = 0.06
      hysteresis                = 0.03
      offset                    = 0.0
      zoneWidth                 = 0.13
    """