#!/bin/bash
# Infraestrutura como código: Script de criação de estrutura de usuários, diretórios e permissões
# Formação Linux Fundamentals
# Criar diretórios na raiz
echo "Criando pasta ..."
cd /
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Criar os grupos
echo "Montando grupos de trabalho ..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criar os usuários
echo "Criando perfil de colaboradores ..."
useradd carlos -c "Carlos Alberto" -m -s /bin/bash -p $(openssl passwd -crypt 123456a@) -G GRP_ADM
useradd maria -c "Maria Cecília" -m -s /bin/bash -p $(openssl passwd -crypt 123456a@) -G GRP_ADM
useradd joao -c "João Rodolfo" -m -s /bin/bash -p $(openssl passwd -crypt 123456a@) -G GRP_ADM
useradd debora -c "Débora Antony" -m -s /bin/bash -p $(openssl passwd -crypt 123456a@) -G GRP_VEN
useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -p $(openssl passwd -crypt 123456a@) -G GRP_VEN
useradd roberto -c "Roberto Carlos" -m -s /bin/bash -p $(openssl passwd -crypt 123456a@) -G GRP_VEN
useradd josefina -c "Josefina Bahia" -m -s /bin/bash -p $(openssl passwd -crypt 123456a@) -G GRP_SEC
useradd amanda -c "Amanda Veiga" -m -s /bin/bash -p $(openssl passwd -crypt 123456a@) -G GRP_SEC
useradd rogerio -c "Rogério Sanches" -m -s /bin/bash -p $(openssl passwd -crypt 123456a@) -G GRP_SEC

# Atribuindo diretório aos grupos e usuários
echo "Atribuindo pastas aos grupos de trabalho ..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

# Atribuindo permissão aos diretório
echo "Modificando permissões das pastas de trabalho ..."
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Concluído com sucesso!"