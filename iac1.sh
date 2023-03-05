#!/bin/bash

echo "Criando diretórios..."

mkdir /publico -m 777
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Alterando grupo dos diretórios criados..."

chown root:GRP_ADM /adm
chmod 770 /adm

chown root:GRP_VEN /ven
chmod 770 /ven

chown root:GRP_SEC /sec
chmod 770 /sec

echo "Criando Usuários..."

useradd carlos -m -s /bin/bash -G GRP_ADM && echo "Senha123" | sudo passwd --stdin carlos
useradd maria -m -s /bin/bash -G GRP_ADM && echo "Senha123" | sudo passwd --stdin maria
useradd joao -m -s /bin/bash -G GRP_ADM && echo "Senha123" | sudo passwd --stdin joao

useradd debora -m -s /bin/bash -G GRP_VEN && echo "Senha123" | sudo passwd --stdin debora
useradd sebastiana -m -s /bin/bash -G GRP_VEN && echo "Senha123" | sudo passwd --stdin sebastian
useradd roberto -m -s /bin/bash -G GRP_VEN && echo "Senha123" | sudo passwd --stdin roberto

useradd josefina -m -s /bin/bash -G GRP_SEC && echo "Senha123" | sudo passwd --stdin josefina
useradd amanda -m -s /bin/bash -G GRP_SEC && echo "Senha123" | sudo passwd --sdin amanda
useradd rogerio -m -s /bin/bash -G GRP_SEC && echo "Senha123" | sudo passwd --stdin rogerio

echo "Fim....."
