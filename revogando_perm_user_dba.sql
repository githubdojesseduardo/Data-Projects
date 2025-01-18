SELECT * FROM tabela_de_clientes WHERE `CPF` = '1234567890'

REVOKE DELETE, INSERT ON sucos_vendas.tabela_de_clientes FROM 'user1'@'localhost'

GRANT UPDATE (LIMITE_DE_CREDITO) ON sucos_vendas.tabela_de_clientes TO 'user1'@'localhost';


