USE `insight_places`;
DROP procedure IF EXISTS `insight_places`.`novoAluguel_32`;
DELIMITER $$
USE `insight_places`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `novoAluguel_32`(vAluguel VARCHAR(10), vClienteNome VARCHAR(150), vHospedagem VARCHAR(10), vDataInicio DATE,
vDataFinal DATE, vPrecoUnitario DECIMAL(10,2))
BEGIN
    DECLARE vCliente VARCHAR(10);
    DECLARE vDias INTEGER DEFAULT 0;
    DECLARE VPrecoTotal DECIMAL(10,2);
    DECLARE VNumCliente INTEGER;
    DECLARE vMensagem VARCHAR(100);
    DECLARE EXIT HANDLER FOR 1452
    BEGIN
        SET vMensagem = 'Problema de chave estrangeira associado a alguma entidade da base.';
        SELECT vMensagem;
    END;
    SET vNumCliente = (SELECT COUNT(*) FROM clientes WHERE nome = vClienteNome);
    IF vNumCliente > 1 THEN
		SET vMensagem = 'Este cliente não pode ser usado para incluir aluguel pelo nome.';
		SELECT vMensagem;
    ELSE
		SET vDias = (SELECT DATEDIFF (vDataFinal, vDataInicio));
		SET vPrecoTotal = vDias * vPrecoUnitario;
		SELECT cliente_id INTO vCliente FROM clientes WHERE nome = vClienteNome;
		INSERT INTO alugueis VALUES (vAluguel, vCliente, vHospedagem, vDataInicio, 
		vDataFinal, vPrecoTotal);
		SET vMensagem = 'Aluguel incluido na base com sucesso.';
		SELECT vMensagem;
    END IF;
END$$
DELIMITER ;

CALL novoAluguel_32('10007','Júlia Pires','8635','2023-03-30','2023-04-04',40);
 