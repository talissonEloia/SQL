import pyodbc

server = 'BIGNIGA\SQLTALISSON'
database = 'SQL_BD_1'
driver = '{ODBC Driver 18 for SQL Server}' 

conn = pyodbc.connect('DRIVER=' + driver + ';SERVER=' + server + 
                    ';DATABASE=' + database + 
                    ';Trusted_Connection=yes; TrustServerCertificate=yes;')


cursor = conn.cursor()

"""
comando1 = insert into Turmas 
            (id_turma, id_curso, data_inicio, data_termino, data_cadastro, login_cadastro)
            values
                (2,2,'25/02/2022','25/10/2022',getdate(),'Leona')
"""

id_turma = 5
id_curso = 5
data_inicio = "12/01/2022"
data_termino = "12/12/2022"
data_cadastro = "12/02/2023"
login_cad = "Fiora"

#inserir o f""" para usar as chaves {} como parêmetros.
#tudo que estiver dentro da string será executado no sql como comando.

comando2 = f"""
insert into dbo.Turmas
    (id_turma, id_curso, data_inicio, data_termino, data_cadastro, login_cadastro)
    values
    ('{id_turma}','{id_curso}','{data_inicio}','{data_termino}','{data_cadastro}','{login_cad}')
"""


cursor.execute(comando2) #executa o comando da string

cursor.commit() #so usa quanod executa alguma alteração no bd

print('COMANDO EXECUTADO COM SUCESSO!')

# Feche o cursor
cursor.close()

# Feche a conexão com o banco de dados
conn.close()