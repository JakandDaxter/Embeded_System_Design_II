# Dr. Kaputa
# hello world via a class

class Printer():
  def __init__(self):
    self.runCode()
      
  def runCode(self): 
    print ("Hello World\n")
  
def main():
  printer = Printer()
  
if __name__ == '__main__':
  main()