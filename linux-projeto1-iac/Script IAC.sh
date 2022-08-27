#1/bin/bash

echo "Criando diretórios..."

mkdir /publica
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -c "Carlos Alberto" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_ADM
useradd maria -c "Maria Clara" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_ADM
useradd joao -c "João Rodrigues" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_ADM

useradd debora -c "Débora Regiane" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_VEN
useradd sebastiana -c "Sebastiana de Almeida" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_VEN
useradd roberto -c "João Rodrigues" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_VEN

useradd josefina -c "Josefina Pires" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_SEC
useradd amanda -c "Amanda Santos" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_SEC
useradd rogerio -c "Rogério Gomes" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_SEC

echo "Especificando permissões aos diretórios..."

chown root: GRP_ADM /adm
chown root: GRP_VEN /ven
chown root: GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico