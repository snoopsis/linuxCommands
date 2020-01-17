# Corrigir as permissoes node para Mysql
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password'
# no % colocar o host que ta sem permissao

# Permissoes Especificas Mysql e Banco de Dados
# We can list all MySQL or MariaDB user accounts by querying the mysql.users table:
SELECT user, host FROM mysql.user;

# To create a new MySQL user account run the following command, just replace 
# ‘database_user’ with the name of the user that you want to create:
CREATE USER 'nodeusuario'@'localhost' IDENTIFIED BY 'senhausuario';

# To delete a user account, use the following command:
DROP USER 'nomeusuario'@'%';

# You can list all databases that exist on our MySQL or MariaDB server with the 
# following command:
SHOW DATABASES;

#To GRANT ALL privileges to a user, allowing that user full control over a specific 
# database, use the following syntax:
GRANT ALL PRIVILEGES ON *.* TO 'bancodados'@'localhost';

SHOW GRANTS FOR 'root'@'localhost';

# Recuperar root do mysql
# Stop the MySQL service
sudo /etc/init.d/mysql stop

# Start MySQL without a password
sudo mysqld_safe --skip-grant-tables &

# Connect to MySQL
mysql -uroot

# Set a new MySQL root password
use mysql;
update user set authentication_string=PASSWORD("mynewpassword") where User='root';

# flush privileges;
quit

# Stop and start the MySQL service
sudo /etc/init.d/mysql stop
sudo /etc/init.d/mysql start

# Backup de DB com Linha Comandos
mysqldump –u buzios -psenhapessoal bancodados > arquivo.sql

# Restaurar de DB com Linha Comandos
mysql –u buzios -psenhapessoal bancodados < arquivo.sql

# Encontrar Registos Duplicados no Banco de Dados, Neste caso Emails
SELECT email, COUNT(email) FROM contacts GROUP BY email HAVING COUNT(email) > 1;

# Delete duplicate Records with DELETE JOIN
DELETE e1 FROM voos e1 INNER JOIN voos e2 on e1.id < e2.id AND e1.numero = e2.numero;
