-- SELECT * FROM DBO.Alu

insert into dbo.Alunos
(id_aluno, nome, data_nascimento,sexo,data_cadastro, login_cadastro)
values 
(1,'Alan Moraes','04/05/1978','M','12/02/2023 21:43:00','Talisson')

insert into dbo.Cursos
(id_curso,nome_curso,data_cadastro,login_cadastro)
values
(2,'engeharia de software','11/02/2023','Lisa')

insert into dbo.Situacao
(id_situacao,situacao,data_cadastro,login_cadastro)
values(3,'Ausente','15/02/2023 22:17:00','Lisa')
	

select *
from dbo.Situacao

DESKTOP-G28007F\SQL_DB_TROVATO