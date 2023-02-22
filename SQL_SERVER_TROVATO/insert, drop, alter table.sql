'''
Droprar: fk_alunos, valor_turma e Desconto
'''

select * from ALUNOSXturmas

alter table turmas
    drop constraint fk_alunos

alter table turmas
    drop column id_aluno

alter table turmas
    drop column valor_turma

alter table turmas
    drop column Desconto

'''
criando nova tabela para conectar as chaves estrangeiras AlunXTurmas
'''

CREATE TABLE AlunosxTurmas
(
    id_turmas int not NULL,
    id_alunos int not NULL,
    descoto numeric,
    valor numeric not null,
    data_cadastro date not NULL,
    log_cadastro varchar(255)
)

alter table AlunosxTurmas
    add constraint fk_turmas foreign key (id_turmas) references Turmas (id_turma)

alter table AlunosxTurmas
    add constraint fk_alunos foreign key (id_alunos) references Alunos (id_aluno)



alter table AlunosxTurmas 
    DROP column descoto 

ALTER TABLE AlunosxTurmas
    add desconto numeric(3,2)

alter table AlunosxTurmas
    alter column valor numeric(13,2)
    
'####################--AlunosxTurmas--####################'

insert into Turmas
    (id_turma, id_curso, data_inicio, data_termino, data_cadastro, login_cadastro)
    values
        (1,1,'03/03/2022','03/11/2022',getdate(),'Jinx')

insert into AlunosxTurmas
    (id_turmas, id_alunos, valor, data_cadastro,log_cadastro, desconto)
    VALUES
        (1,10,1500,GETDATE(),'Jinx',0.1)
    

select * from AlunosxTurmas
select * from turmas