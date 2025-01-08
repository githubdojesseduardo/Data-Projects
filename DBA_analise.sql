{
  "query_block": {
    "select_id": 1,
    "cost info": {
      "query_cost": "5970.05"
},
"table": {
   "table_name": "notas_fiscais",
   "access_type": "ALL",
   "rows_examined_per_scan": 59138,
   "rows_produced_per_join": 5913,
   "filtered": "10.00",
      "cost info": {
      "read_cost": "5378.67",
      "eval cost": "591.38",
      "prefix_cost": "5970.05",
      "data_read_per_join": "369K"
},
   "used_column "used columns": [
   "CPF",
   "DATA VENDA",
   "NUMERO",
   "IMPOSTO"
},
    "attached_condition": "('sucos_vendas_00235'. 'notas_fiscais. 'DATA_VENDA DATE 2020-01-01')"
   }
    }
}