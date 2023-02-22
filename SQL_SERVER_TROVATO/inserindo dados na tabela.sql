/* inserindo dados na tabela
     usando arquivo csv


##### letra maiulsula e minuscula não fazem diferença
##### identação ajuda no código mas ele pode ser escrito todo em uma linha


*/

--########--INSERINDO VALORES--########--

                        --########--ALUNOS--########--
insert into dbo.Alunos
    (id_aluno, nome, sexo, data_nascimento, data_cadastro, login_cadastro)
    values
        (1,'Carlos Alberto de Nobrega','F' ,'25/10/1931','25/10/2012 04:20:00','Kalus')

insert into dbo.Alunos (id_aluno, nome, sexo,  data_nascimento, data_cadastro, login_cadastro)
    values
        (2,'Seu Jorge do Samba de Capadocia','F', '11/11/1979', '22/02/2023 05:00:01','Sion' )


                        --########--CURSOS--########--

INSERT INTO DBO.Cursos 
    (id_curso,nome_curso, data_cadastro, login_cadastro)
    values
        (1, 'VBA 1', '10/12/2022 15:00:00', 'Jinx') 



                        --########--SITUAÇÃO--########--
INSERT INTO DBO.Situacao 
    (id_situacao,SITUACAO, DATA_CADASTRO, LOGIN_CADASTRO)
    VALUES
        (1,'PRESENTE','23/02/2023','Sion')

INSERT INTO DBO.Situacao 
    (id_situacao,SITUACAO, DATA_CADASTRO, LOGIN_CADASTRO)
    VALUES
        (2,'AUSENTE','23/02/2023','Sion')

INSERT INTO DBO.Situacao 
    (id_situacao,SITUACAO, DATA_CADASTRO, LOGIN_CADASTRO)
    VALUES
        (3,'AUSENTE JUSTIFICADO','23/02/2023','Sion')




                        --########--ALUNOS--########--
                        --########--ALUNOS--########--


--########--CONSULTA--########--

select * from dbo.Alunos
select * from dbo.Cursos
select * from dbo.Situacao
