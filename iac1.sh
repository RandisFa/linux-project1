#!/bin/bash

echo " Criando Diretórios... "

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos de usuários..."

groupadd GP_ADM
groupadd GP_VEN
groupadd GP_SEC

echo "Criando usuários..."
useradd carlos -m -s /bin/bash -p $(openssl passwd Senh13) -G GP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd Senha123) -G GP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -G GP_VEN
useradd sebatiao -m -s /bin/bash -p $(openssl passwd Senha123) -G GP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -G GP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -G GP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123) -G GP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -G GP_SEC

echo " Especificando permissões dos diretórios..."

chown root:GP_ADM /adm
chown root:GP_VEN /ven
chown root:GP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo " Script finalizado... "
