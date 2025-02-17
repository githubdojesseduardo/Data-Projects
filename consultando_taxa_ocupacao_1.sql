USE insight_places;

SELECT
	hospedagem_id,
	MIN(data_inicio) as primeira_data,
    SUM(DATEDIFF(data_fim, data_inicio)) AS dias_ocupados,
	DATEDIFF(MAX(data_fim), MIN(data_inicio)) AS total_dias,
    ROUND((SUM(DATEDIFF(data_fim, data_inicio)) / DATEDIFF(MAX(data_fim), MIN(data_inicio))) * 100) as taxa_ocupacao
FROM
	alugueis
GROUP BY
	hospedagem_id
ORDER BY taxa_ocupacao DESC
;