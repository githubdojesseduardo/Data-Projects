USE sucos_vendas_00235

SELECT * FROM notas fiscais WHERE data_venda = '2020-01-01'

EXPLAIN FORMAT=JSON SELECT * FROM notas_fiscais WHERE data_venda = '2020-01-01' \G