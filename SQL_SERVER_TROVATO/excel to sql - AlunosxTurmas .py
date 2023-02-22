#necessário ter a bib. openpyxl para manipular o arquivo excel.

#importação das bibliotecas pandas para manipulação e pyodbc para conexão do banco.
import pandas as pd
import pyodbc

############--CONEXÃO COM BANCO DE DADOS--############


#parâmetros para conexão do banco
server = 'BIGNIGA\SQLTALISSON'
database = 'SQL_BD_1'
driver = '{ODBC Driver 18 for SQL Server}'

#Conexão com o banco de dados
conexao = pyodbc.connect('Driver='+ driver+ ';Server=' + server+ 
                            ';Database=' + database +
                            ';Trusted_Connection=yes; TrustServerCertificate=yes;')

#inicia o cursor para manipulação do sql
cursor = conexao.cursor()

#informa que a conexão foi estabelecida
print('Conexão estabelecida!')

#cria um datagrame com a planilha TURMAS do excel
df = pd.read_excel('SQL\SQL_SERVER_TROVATO\9_SQL_SERVER.xlsm',sheet_name = 'ALUNOS X TURMAS')
print(df)
#informa que o datagrame com a planilha TURMAS foi criado
print('Data frame criado')

#cria loop para as colunas do arquivo
for row in df.itertuples():
    #inicia o cursor do sql para execução da query
    cursor = conexao.cursor()
    #query que será executada no sql server
    query = f"""INSERT INTO dbo.AlunosxTurmas (id_turmas,id_alunos,data_cadastro,log_cadastro,desconto,valor)
                values
                    (?,?,?,?,?,?)
                """
    #cursor executa a query para cada parametro na tabela.
    cursor.execute(query, row.ID_TURMA, row.ID_ALUNO, row.data_cadastro, row.log_cadastro, row.VALOR_DESCONTO,row.VALOR)
    #informa ao banco a alteração            
    cursor.commit()

# Fecha a conexão com o banco de dados
conexao.close()

