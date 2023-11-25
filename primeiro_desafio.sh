#!/bin/bash
echo "1. Criando Diretórios publico, adm, ven e sec"
mkdir /publico /adm /ven /sec
echo "Diretórios criados!!!"
echo ""
echo "2. Criando os grupos GRP_ADM, GRP_VEN e GRP_SEC"
groupadd GRP_ADM && groupadd GRP_VEN && groupadd GRP_SEC
echo "Grupos criados!!!"
echo ""
echo "3. Criando os usuários carlos, maria, joao, debora, sebastiana, roberto, josefina, amanda e rogério"
useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM && passwd -e carlos
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM && passwd -e maria
useradd joao -m -c "Joao" -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM && passwd -e joao
useradd debora -m -c "Debora" -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN && passwd -e debora
useradd sebastiana -m -c "sebastiana" -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN && passwd -e sebastiana
useradd roberto -m -c "roberto" -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN && passwd -e roberto
useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC && passwd -e josefina
useradd amanda -m -c "amanda" -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC && passwd -e amanda
useradd rogerio -m -c "Rogerio" -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC && passwd -e rogerio
echo "Usuários criados com sucesso!!!"
echo ""
echo "4. Alterando os donos dos diretorios adm, ven e sec"
chown root:GRP_ADM /adm && chown root:GRP_VEN /ven && chown root:GRP_SEC /sec
echo "Donos setados com sucesso!!!"
echo ""
echo "5. Setando as permissoes dos diretórios publico, adm, ven e sec"
chmod 777 /publico && chmod 770 /adm && chmod 770 /ven && chmod 770 /sec
echo "Permissoes dos diretorios setadas!!!"
echo ""
echo ""
clear
echo "6. Resumo da operacao:"
echo "Diretorios criados:"
ls / |grep publico && ls / |grep adm && ls / |grep ven && ls / |grep sec
echo ""
echo "Grupos criados:"
cat /etc/group |grep GRP_ADM && cat /etc/group |grep GRP_VEN && cat /etc/group |grep GRP_SEC
echo ""
echo "Usuarios criados"
cat /etc/passwd |grep carlos && cat /etc/passwd |grep maria && cat /etc/passwd |grep joao && cat /etc/passwd |grep debora && cat /etc/passwd |grep sebastiana && cat /etc/passwd |grep roberto && cat /etc/passwd |grep josefina && cat /etc/passwd |grep amanda && cat /etc/passwd |grep rogerio 
echo ""
echo "Permissoes setadas nos diretorios:"
ls / |grep publico && ls -la /publico
echo ""
echo ""
ls / |grep adm && ls -la /adm
echo ""
echo ""
ls / |grep ven && ls -la /ven
echo ""
echo ""
ls / |grep sec && ls -la /sec
echo ""
echo ""
echo "Termino da execucao do script" 
echo ""
