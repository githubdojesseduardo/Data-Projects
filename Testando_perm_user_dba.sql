INSERT INTO `sucos_vendas`.`tabela_de_clientes`
(`CPF`, `NOME`, `ENDERECO_1`, `ENDERECO_2`, `BAIRRO`, `CIDADE`, `ESTADO`, `CEP`, `DATA_DE_NASCIMENTO`, `IDADE`, `SEXO`, `LIMITE_DE_CREDITO`, `VOLUME_DA_COMPRA`, `PRIMEIRA_COMPRA`) VALUES
(`1234567890`, `João da Silva', 'Rua Projetada A', 'Tijuca', 'Rio de Janeiro', 'RJ', '2000000', '2000-01-01', '24', 'M', '10000', '2000', '0');
UPDATE 'sucos_vendas`.`tabela_de_clientes` SET `ENDERECO_1` = 'Rua Projetada B', `LIMITE_DE_CREDITO` = 20000
WHERE `CPF` = '1234567890'

UPDATE `sucos_vendas`.`tabela_de_clientes` SET `ENDERECO_1` = 'Rua Projetada B', `LIMITE_DE_CREDITO` = 20000
WHERE `CPF` = '1234567890'


DELETE FROM `sucos_vendas`.`tabela_de_clientes` WHERE `CPF` = '1234567890'

GRANT SELECT, UPDATE ON sucos_vendas.tabela_de_clientes TO 'user1'@'localhost'; 