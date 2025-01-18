CREATE USER 'contabilidade2'@'localhost' IDENTIFIED BY 'senha';
GRANT SELECT, INSERT, UPDATE, DELETE ON sucos_contabilidade.* TO 'contabilidade2'@'localhost';
-- Verificando se o usuario foi criado
SELECT user, host FROM mysql.user;
-- verificando os privilegio
SHOW GRANTS FOR 'contabilidade2'@'localhost';
SHOW GRANTS FOR 'contabilidade'@'localhost';