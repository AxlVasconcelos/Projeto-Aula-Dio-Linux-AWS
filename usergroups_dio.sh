#!/bin/bash

echo "Iniciando..."
date
echo"********************"
echo"********************"
echo "Criando pastas..."
mkdir -m 775 /publico
mkdir -m 775 /adm
mkdir -m 775 /ven
mkdir -m 775 /sec

echo "Criando Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários..."
useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd -crypt teste123) -G GRP_ADM
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd -crypt teste123) -G GRP_ADM
useradd joao -m -c "João" -s /bin/bash -p $(openssl passwd -crypt teste123) -G GRP_ADM
useradd debora -m -c "Débora" -s /bin/bash -p $(openssl passwd -crypt teste123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd -crypt teste123) -G GRP_VEN
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd -crypt teste123) -G GRP_VEN
useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd -crypt teste123) -G GRP_SEC
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd -crypt teste123) -G GRP_SEC
useradd rogerio -m -c "Rogério" -s /bin/bash -p $(openssl passwd -crypt teste123) -G GRP_SEC

echo "Usuários e Grupos criados..."
