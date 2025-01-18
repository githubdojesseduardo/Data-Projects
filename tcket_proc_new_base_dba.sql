DELIMITER $$

CREATE PROCEDURE create_user(IN username VARCHAR(50), IN user_password VARCHAR(50), IN user_role VARCHAR(50))
BEGIN
    -- Criação do usuário
    SET @query = CONCAT('CREATE USER "', username, '"@"localhost" IDENTIFIED BY "', user_password, '";');
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    
    -- Associação da role ao usuário
    SET @query = CONCAT('GRANT "', user_role, '" TO "', username, '"@"localhost";');
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    
    -- Aplicação das mudanças
    FLUSH PRIVILEGES;
END$$

CREATE DATABASE sucos_marketing;
CREATE DATABASE sucos_financeiro;

CREATE ROLE 'analista_marketing';
GRANT SELECT ON sucos_marketing.* TO 'analista_marketing';
CREATE ROLE 'analista_financeiro';
GRANT SELECT ON sucos_financeiro.* TO 'analista_financeiro';