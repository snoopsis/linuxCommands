#Listar pacotes por tamanho:
sed -ne '/^Package: \(.*\)/{s//\1/;h;};/^Installed-Size: \(.*\)/{s//\1/;G;s/\n/ /;p;}' /var/lib/dpkg/status | sort -rn

#Atualizar por completo todos os pacotes instalados:
sudo apt-get update && sudo apt-get upgrade

# Comandos para saber IP no Linux
$ ip a
$ ip a show eth0

#Remover por completo um pacote:
sudo apt-get remove --purge mysql*
sudo apt-get purge mysql*
sudo apt-get autoremove.
sudo apt-get autoclean.
sudo apt-get remove dbconfig-mysql.
sudo apt-get dist-upgrade.
sudo apt-get install mysql-server

#Limpeza com apt-get:
sudo apt-get clean, apt-get autoclean, apt-get autoremove

#Criar um tunnel para abrir portas com o autossh
autossh -NR 1400:localhost:80 snoopsis@149.56.97.233 &

#Listar processos por nome
ps -A | grep firefox

#Fazer backup do sistema linux completo com TAR
# entra na pasta raiz
cd / 

# faz o backup
sudo tar -cvpzf backup.tar.gz --exclude=/backup.tar.gz --one-file-system / 

# Restauraback
sudo tar -xvpzf /path/to/backup.tar.gz -C /restore/location --numeric-owner 

#Listar maquinas ligadas na VPN
sudo cat /etc/openvpn/server/openvpn-status.log

#Usar o comando scp para transferir arquivos
scp examplefile yourusername@yourserver:/home/yourusername/

# The command above will transfer the file “examplefile” to the directory
# “/home/yourusername/” at the server “yourserver”

scp yourusername@yourserver:/home/yourusername/examplefile .
# This will copy the file “/home/yourusername/examplefile” to the current directory on your 
# own computer, provided that the username and password are correct and that the file 
# actually exists.

scp yourusername@yourserver:/home/yourusername/examplefile yourusername2@yourserver2:/home/yourusername2/
# Please note that, to make the above command work, the servers must be able to reach 
# each other, as the data will be transferred directly between them. If the servers somehow # can’t reach each other (for example, if port 22 is not open on one of the sides) you won’t 
# be able to copy anything.

#Use ffmpeg to convert mp4 into mp3
ffmpeg -i filename.mp4 filename.mp3

# Listar tamanho dos diretorios dentro de um caminho /
sudo du -sh *


# Fazer um script funcionar de forma global no shell
# You can just create symlink. Create it in /usr/local/bin. All you need is to run command:
sudo ln -s /full/path/to/your/file /usr/local/bin/name_of_new_command

# Dar permissao de execucao a um script shell
chmod +x script.sh

# After that you should make your file executable:
chmod +x /full/path/to/your/file
# Now you should be able to run name_of_new_command at any time in your terminal.

# Criar arquivo .tar.gz comprimir e descomprimir
tar -cvzf MyImages-14-09-12.tar.gz /home/MyImages ( cria arquivo e comprime )

tar -xvf public_html-14-09-12.tar ( descomprime arquivos .tar no mesmo diretorio )

tar -xvf public_html-14-09-12.tar -C /home/public_html/videos/ 
# Descomp outro direotorio

# Backup de Banco de Dados Mysql
# 1 banco de dados
sudo mysqldump -p products > /mnt/backups/products.sql
# 1 banco com Usuario
mysqldump -u USER -p products > /mnt/backups/products.sql
# Todos
mysqldump -u USER -p --all-databases > /mnt/backups/all_databases.sql
#Todos Compressao
mysqldump -u USER -p -C products > /mnt/backups/products.sql.tgz

# Configurar Email na Linha de Comandos
apt-get install sendmail mailutils sendmail-bin
mkdir -m 700 /etc/mail/authinfo/
cd /etc/mail/authinfo/

# Create a file called gmail-auth:
# AuthInfo: "U:root" "I:YOUR GMAIL EMAIL ADDRESS" "P:YOUR PASSWORD"
makemap hash gmail-auth < gmail-auth

#Configure /etc/mail/sendmail.mc right above first mailer definition line
#define(`SMART_HOST',`[smtp.gmail.com]')dnl
#define(`RELAY_MAILER_ARGS', `TCP $h 587')dnl
#define(`ESMTP_MAILER_ARGS', `TCP $h 587')dnl
#define(`confAUTH_OPTIONS', `A p')dnl
#TRUST_AUTH_MECH(`EXTERNAL DIGEST-MD5 CRAM-MD5 LOGIN PLAIN')dnl
#define(`confAUTH_MECHANISMS', `EXTERNAL GSSAPI DIGEST-MD5 CRAM-MD5 #LOGIN PLAIN')dnl
#FEATURE(`authinfo',`hash -o /etc/mail/authinfo/gmail-auth.db')dnl

make -C /etc/mail
/etc/init.d/sendmail reload

# Test:
echo "Just testing my sendmail gmail relay" | mail -s "Sendmail gmail Relay" seuemail@gmail.com

# Abrir porta no Servidor Web para Servico na LAN local ( NAT e IPTABLES )
# Ativa o direcionamento de portas:
sudo sysctl net.ipv4.ip_forward=1

# Configura da porta 14900 do servidor WEB para o servico da maquina local na porta 80
sudo iptables -t nat -A PREROUTING -p tcp --dport 17500 -j DNAT --to-destination 10.8.0.2:80

# Faz uma ultima configuracao no iptables e NAT
sudo iptables -t nat -A POSTROUTING -j MASQUERADE


# Lista as regras que foram criadas:
sudo iptables -t nat -v -L -n --line-number

# Apagar uma regra criada:
sudo iptables -t nat --delete PREROUTING 7

# Comandos para Controlar o OSMC Kodi Remotamente
# Para outra funcao, muda apenas o que esta entre aspas:
xbmc-send --action="CleanLibrary(video)"

# Segue Website com todas as acoes possiveis:
# https://kodi.wiki/view/List_of_built-in_functions

# Comandos para Instalar Imagem de OS RPI com a ferramenta dd
#Verificar quais dispositivos estão montados no sistema:
df -h

# Colocar o adaptador de cartao de memoria e verificar novamente
df -h

# Desmontar a Partição ou Partições do cartao de memoria
sudo umount /dev/sdc1

# Gravar o arquivo .img que foi baixado para o cartao de memoria
sudo dd bs=4M status=progress if=/caminho/para/arquivo.img of=/dev/sdc

# Comando para remover de forma segura o cartão de memoria do sistema
sudo sync
# Finalizado agora é só inserir no Raspberry Pie

# Encontrar pastas no diretorio corrente com mais de 1000mb
du -sm * | awk '$1 > 1000'

# Apagar o arquivo do email que cresce sem parar por vezes
cat /dev/null > /var/mail/root


# Ocamlfuse montar e desmontar drive linux
google-drive-ocamlfuse -o allow_other /pasta/
fusermount -u /pasta/

# Informações sobre Servidor Samba Linux
# Local onde se encontram o arquivo de configuração
sudo nano /etc/samba/smb.conf

# Reiniciar o servidor samba
sudo service smbd restart

# Inserir um usuário samba
sudo smbpasswd -a username

# My Crontabs Backup
# @reboot /home/snoopsis/scripts/./mount-remote.sh
# @reboot /home/snoopsis/scripts/./rpi-boipeba.sh
# 00 22 * * * /home/snoopsis/scripts/./autobackups.sh
# 40 22 * * * /home/snoopsis/scripts/./backupload.sh
# 20 23 * * * /home/snoopsis/scripts/./dailymusic.sh
# 50 23 * * * /home/snoopsis/scripts/./gmp3up.sh
# 00 16 * * * /home/snoopsis/scripts/./lembrarcrewlist.sh
# 30 * * * * /home/snoopsis/scripts/./delold.sh
# 05 00 * * * /home/snoopsis/scripts/./getmare.sh

# Desativar Kodi Media Center
# Starting Kodi
# Kodi should start by default with OSMC. If it does not, this is likely a sign of a bigger 
# problem with your system and you should look at obtaining some logs instead to find out 
# what’s wrong.
# It can be started via the command line as follows:
sudo systemctl start mediacenter

# Stopping Kodi
# Kodi can be stopped via the command line as follows:
sudo systemctl stop mediacenter

#Preventing Kodi from starting on boot
# You may wish to run OSMC in a ‘headless’ mode. You can disable Kodi from starting on 
# boot with the following command:
sudo systemctl disable mediacenter

# If you choose to later re-enable it, you can easily do so with:
sudo systemctl enable mediacenter

# Desativar Kodi Media Center
# Syslog has been replaced by rsyslog on numerous OS. So, on Debian > 5, Ubuntu > 11.2, # Centos 6.x the following command line would stop it:
 service rsyslog stop

# Then, you can disable it at boot:
 systemctl disable rsyslog

# to enable it again at boot:
 systemctl enable rsyslog

# Usar PM2 para iniciar Node com Gulp
pm2 start npm -- run watch
# o pm2 tem um script com final json que e super simples para inserir sites
pm2 start, pm2 stop, pm2 delete
pm2 start idProcesso --watch

# Editar Sources em Linux Debian Ubuntu Raspbian
nano /etc/apt/sources.list

# As Permissoes Corretas no WWW
chmod -R 755
# esse aqui da permissao escrita e leitura para todos
chmod -R 0777

# https SSL gratuito com cerbot eff
# certifica todos os sites com SSL na VPS
sudo certbot --apache




