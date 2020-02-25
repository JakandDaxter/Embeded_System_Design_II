import sys
import gui_write2mem
from PyQt4 import QtGui, QtCore


class pwm_gui(QtGui.QWidget):
    def __init__(self):
        super(pwm_gui, self).__init__()
        self.initUI()

    def initUI(self):
        self.setWindowTitle('PWM Module')
        self.resize(350, 150)
    
        #Titles / Labels
        title = QtGui.QLabel('Enter In the Desired Values Then Click "Run" to Write Values To Board')
        period = QtGui.QLabel('Period')
        dutyCycle = QtGui.QLabel('Duty Cycle')
        self.status = QtGui.QLabel('')

        #Text Boxes
        self.periodEdit = QtGui.QLineEdit()
        self.dutyCycleEdit = QtGui.QLineEdit()
        
        #Run Button
        btn = QtGui.QPushButton('Run', self)

        #enable Radio Button
        self.enableRadio = QtGui.QRadioButton("Enable")
        self.enableRadio.setChecked(False)

        grid = QtGui.QGridLayout()
        
        grid.setSpacing(20)
        
        #widget Layouts
        grid.addWidget(title,0,1)
        
        #enable 
        grid.addWidget(self.enableRadio, 1, 1)

        #Peroid 
        grid.addWidget(period, 2, 0)
        grid.addWidget(self.periodEdit, 2, 1)

        #Duty Cycle
        grid.addWidget(dutyCycle, 3, 0)
        grid.addWidget(self.dutyCycleEdit, 3, 1)
        
        #button to run settings
        grid.addWidget(btn, 4, 1)
        
        #status of program
        grid.addWidget(self.status, 5, 1)
        
        btn.clicked.connect(lambda:self.runSettings(self.enableRadio))

        self.setLayout(grid)

        self.show()

    def runSettings(self,r):
        #enable    = self.enableRadio.text()            
        period    = self.periodEdit.text()
        dutyCycle = self.dutyCycleEdit.text()
        
        try:
            checkPeriod = int(period)
            checkDuty = int(dutyCycle)
        except Exception:
            QtGui.QMessageBox.about(self, 'Error','Input can only be a number')
            return

        # Send value written on GUI to Snickerdoodle /dev/mem 
        # Enable: reg = 0
        # Period: reg = 4
        # Duty Cycle: reg = 8

        if r.isChecked() == True:
            enable = '1'
            self.status.setText("PWM is running!")
            en_setting        = gui_write2mem.WriteToMem(enable, 0) ##pass the value to memory command in other file
            period_setting    = gui_write2mem.WriteToMem(period, 4)
            dutyCycle_setting = gui_write2mem.WriteToMem(dutyCycle, 8)
        else:
            enable = '0'
            self.status.setText("PWM is not running")
            en_setting        = gui_write2mem.WriteToMem(enable, 0)
            
            
def main():
    app = QtGui.QApplication(sys.argv)
    pwm = pwm_gui()

    sys.exit(app.exec_())

if __name__ == '__main__':
    main()