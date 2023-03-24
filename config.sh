#! /bin/bash
echo "Criando Diretórios do ambiente"

cd /
mkdir publico adm ven sec

echo "Criando Grupos do ambiente"

groupadd GRP_ADM GRP_VEN GRP_SEC

echo "Criando Usuários"

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -crypt Senha) -e -g GRP_ADM
useradd maria -c"Maria" -m -s /bin/bash -p $(openssl passwd -crypt Senha) -e -g GRP_ADM
useradd joao -c "Joao" -m -s /bin/bash -p $(openssl passwd -crypt Senha) -e -g GRP_ADM
useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -crypt Senha) -e -g GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -crypt Senha) -e -g GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -crypt Senha) -e -g GRP_VEN
useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -crypt Senha) -e -g GRP_SEC
useradd amanda -c "Amanda"-s -m /bin/bash -p $(openssl passwd -crypt Senha) -e -g GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd -crypt Senha) -e -g GRP_SEC

echo "Configurando Permissoões"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Configuração do ambiente concluida"
