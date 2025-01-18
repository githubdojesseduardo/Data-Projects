# Defina as variáveis de conexão
$server = "localhost"  # Endereço do servidor MySQL
$database = "mysql"    # O banco de dados padrão de sistema
$user = "root"         # Nome do usuário MySQL com privilégios adequados
$password = "senha"    # Senha do usuário MySQL

# Crie a consulta SQL
$query = "SHOW GRANTS FOR 'User01'@'%'"

# Conectar ao MySQL e executar a consulta
$connectionString = "Server=$server;Database=$database;Uid=$user;Pwd=$password;"
$connection = New-Object MySql.Data.MySqlClient.MySqlConnection($connectionString)
$connection.Open()

# Criar o comando SQL
$command = $connection.CreateCommand()
$command.CommandText = $query

# Executar a consulta e capturar os resultados
$reader = $command.ExecuteReader()

# Salvar os resultados em um arquivo de texto
$outputFile = "C:\path\to\output\privileges_report.txt"
while ($reader.Read()) {
    $reader.GetString(0) | Out-File -Append -FilePath $outputFile
}

# Fechar a conexão
$connection.Close()

Write-Host "Relatório gerado com sucesso!"
