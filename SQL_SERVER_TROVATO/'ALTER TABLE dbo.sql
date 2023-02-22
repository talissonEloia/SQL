'####################--ALUNOS--####################'

ALTER TABLE dbo.alunos 
    ALTER COLUMN nome Nvarchar(300)

ALTER TABLE dbo.alunos 
    ALTER COLUMN LOGIN_CADASTRO NVARCHAR(255)

ALTER TABLE dbo.alunos 
    ALTER COLUMN sexo NVARCHAR(255)

'####################--CURSO--####################'

alter table dbo.cursos 
    alter column nome_curso Nvarchar(255)


alter table dbo.cursos 
    alter column login_cadastro Nvarchar(255)


SELECT * from alunos

SELECT * from cursos


