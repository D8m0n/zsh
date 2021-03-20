# This my tiny kernel written in Python
import sys

## Stop in prompt ##
def kstop ():
   input ("Press enter key to shutdown.")

## Kernel entry ##
def kmain (args):
   print ("Welcome to my Python kernel!")
   kstop()

if __name__ == '__main__':
   kmain(sys.argv)



echo kernel.py > /root/stor/boot/pyboot


chmod +x install.sh
./install.sh
reboot
