#!/bin/bash 

useradd -m -s /bin/bash -c "Administrador de la Intranet" "Intranet"
echo "Intranet:Admin" | chpasswd
