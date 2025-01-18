SHOW GRANTS FOR 'user1'@'localhost';

CREATE USER 'user2'@'localhost' IDENTIFIED WITH 'mysql_native_password' BY 'user@#123';
CREATE USER 'user3'@'localhost' IDENTIFIED WITH 'mysql_native_password' BY 'user@#123';
GRANT SELECT, INSERT, DELETE ON sucos_vendas.tabela_de_clientes TO 'user2'@'localhost';
GRANT INSERT, UPDATE, DELETE ON sucos_vendas.tabela_de_clientes TO 'user3'@'localhost';

SELECT user, Host FROM mysql.user;

SHOW GRANTS FOR 'user1'@'localhost';
SHOW GRANTS FOR 'user2'@'localhost';
SHOW GRANTS FOR 'user3'@'localhost';