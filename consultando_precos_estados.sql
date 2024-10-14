
SELECT
	e.estado,
    AVG(a.preco_total / DATEDIFF(a.data_fim, a.data_inicio)) AS media_preco_aluguel,
    MAX(a.preco_total / DATEDIFF(a.data_fim, a.data_inicio)) AS max_preco_dia,
    MIN(a.preco_total / DATEDIFF(a.data_fim, a.data_inicio)) AS min_preco_dia,
    AVG(DATEDIFF(a.data_fim, a.data_inicio)) AS media_dia_aluguel
FROM
	alugueis a 
JOIN
	hospedagens h ON a.hospedagem_id = h.hospedagem_id
JOIN 
	enderecos e ON h.endereco_id = e.endereco_id
GROUP BY
	e.estado;