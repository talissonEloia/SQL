import  pyodbc

dados_conexao = (
    'DRIVER={ODBC Driver 18 for SQL Server}'
    'SERVER=bigniga\sqltalisson;'
    'DATABASE=SQL_BD_1;'
    'Trusted_Connection=yes;'
)

conexao = pyodbc.connect(dados_conexao)
print('Conexão Bem Sucedida')