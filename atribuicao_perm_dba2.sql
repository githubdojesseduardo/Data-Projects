CREATE USER 'user1' @'localhost' IDENTIFIED WITH mysql_native_password BY user@#123
GRANT SELECT, INSERT, UPDATE, DELETE ON sucos_vendas.tabela_de_clientes TO 'user1' @'localhost'