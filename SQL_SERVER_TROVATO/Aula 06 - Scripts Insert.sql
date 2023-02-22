INSERT INTO dbo.Alunos (id_aluno, nome, data_nascimento, sexo, data_cadastro, login_cadastro) 
VALUES 
(2,'Alessandro Henrique Peres Porfirio','04/10/1989','M','02/11/2019 15:00:00','ALESS');

select * from dbo.Alunos

insert into dbo.Cursos (id_curso, nome_curso, data_cadastro, login_cadastro) values
(1, 'VBA I','02/11/2019 15:00:00','ALESS')

SELECT * FROM DBO.Cursos

insert into dbo.Situacao
(id_situacao, situacao, data_cadastro, login_cadastro)
values
(1,'Presença confirmada', '02/11/2019 15:00:00','ALESS')

insert into dbo.Situacao
(id_situacao, situacao, data_cadastro, login_cadastro)
values
(2,'Ausente Sem Justificativa', '02/11/2019 15:00:00','ALESS')

insert into dbo.Situacao
(id_situacao, situacao, data_cadastro, login_cadastro)
values
(3,'Ausente Com Justificativa', '02/11/2019 15:00:00','ALESS')

select * from dbo.Situacao