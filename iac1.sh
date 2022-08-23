#!/bin/bash

echo "Criando diretórios...."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GPR_ADM
groupadd GPR_VEN
groupadd GPR_SEC

echo "Criando usuários e adicionando-os aos grupos..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GPR_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GPR_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GPR_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GPR_VEN
useradd sebatiana -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GPR_VEN
useradd roberta -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GPR_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GPR_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GPR_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GPR_SEC

echo "Editando permissões...."

chown  root:GPR_ADM /adm
chown  root:GPR_VEN /ven
chown  root:GPR_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Edições finalizadas."







