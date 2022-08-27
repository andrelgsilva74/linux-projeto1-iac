#!/bin/bash

echo "Criando usuários convidados no sistema"

useradd guest10 -c "User Convidado" -s /bin/bash -m
passwd guest10 
passwd guest10 -e

useradd guest11 -c "User Convidado" -s /bin/bash -m
passwd guest11
passwd guest11 -e

useradd guest12 -c "User Convidado" -s /bin/bash -m
passwd guest12
passwd guest12

useradd guest13 -c "User Convidado" -s /bin/bash -m
passwd guest13
passwd guest13 -e

echo "Finalizado!!"


