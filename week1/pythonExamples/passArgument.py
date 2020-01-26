# Dr. Kaputa
# simple argument passing

class Complex:
  def __init__(self, realpart, imagpart):
    self.r = realpart
    self.i = imagpart
    
def main():
  data = Complex(3.0,-4.5)
  print data.r
  print data.i
  
if __name__ == '__main__':
  main()