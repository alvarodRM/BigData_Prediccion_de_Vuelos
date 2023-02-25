import subprocess
import os

# Instalamos docker (pide confirmación: Click en 'Yes')
subprocess.run(["sudo" , "apt-get" , "update" ])
subprocess.run(["sudo" , "apt" , "install" , "-y" , "docker.io"])
subprocess.run(["sudo" , "systemctl" , "status" , "docker"])
