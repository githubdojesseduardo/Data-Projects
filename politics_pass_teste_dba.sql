INSTALL PLUGIN validate_password SONAME 'validate_password.so';

SET GLOBAL validate_password.policy = 'MEDIUM';

SET GLOBAL validate_password_length = 8;
SET GLOBAL validate_password_mixed_case_count = 1;
SET GLOBAL validate_password_number_count = 1;
SET GLOBAL validate_password_special_char_count = 1;

SET GLOBAL validate_password.policy = 'LOW';
SET GLOBAL validate_password.policy = 'STRONG';

CREATE USER 'leitor_dados'@'localhost' IDENTIFIED BY 'LeitorSenha123!';
GRANT SELECT ON sucos_vendas.* TO 'leitor_dados'@'localhost';

SET GLOBAL general_log = 'ON';
SET GLOBAL log_output = 'TABLE';

SELECT event_time, user_host, command_type,
CONVERT(argument USING utf8) AS argument_text
FROM mysql.general_log
ORDER BY event_time DESC
LIMIT 30;


SET GLOBAL general_log = 'ON';
SET GLOBAL log_output = 'TABLE';

SELECT * FROM tabela_de_clientes;

SELECT event_time, user_host, command_type,
CONVERT(argument USING utf8) AS argument_text
FROM mysql.general_log
ORDER BY event_time DESC
LIMIT 30;


CREATE USER 'usuario_ssl'@'localhost' IDENTIFIED BY 'SenhaSegura123!' REQUIRE SSL;