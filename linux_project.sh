#!/bin/bash

echo "START"

echo "Creating directory..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "DONE"

echo "Creating user groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "DONE"

echo "Creating users"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Passwd123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Passwd123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Passwd123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Passwd123) -G GRP_VEN
useradd monica -m -s /bin/bash -p $(openssl passwd -crypt Passwd123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Passwd123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Passwd123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Passwd123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Passwd123) -G GRP_SEC

echo "DONE"

echo "Specifying directory permissions..."

chown root:GRP_ADM /adm
chown root:GRP_ADM /ven
chown root:GRP_ADM /sec

chmod 777 /public
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "DONE"

echo "END"
