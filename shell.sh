#Listar pacotes por tamanho:
sed -ne '/^Package: \(.*\)/{s//\1/;h;};/^Installed-Size: \(.*\)/{s//\1/;G;s/\n/ /;p;}' /var/lib/dpkg/status | sort -rn

#Atualizar por completo todos os pacotes instalados:
sudo apt-get update && sudo apt-get upgrade


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
sudo cat /etc/openvpn/openvpn-status.log

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


