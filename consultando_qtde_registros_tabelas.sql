SELECT 
	(SELECT COUNT(*) FROM alugueis) AS alugueis,
	(SELECT COUNT(*)  FROM avaliacoes) AS avaliacoes,
	(SELECT COUNT(*)  FROM hospedagens) AS hospedagens,
	(SELECT COUNT(*) FROM clientes) AS clientes,
	(SELECT COUNT(*)  FROM enderecos) AS enderecos,
	(SELECT COUNT(*)  FROM proprietarios) AS proprietarios;