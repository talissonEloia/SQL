-- CHAVE ESTRANGEIRA - CRIAÇÃO


--########--ALUNOS--########--

--ALTER TABLE Alunos   
    ADD CONSTRAINT fk_Turmas FOREIGN key (id_aluno) REFERENCES Turmas (id_turma)

--ALTER TABLE alunos
    drop CONSTRAINT fk_Turmas

--

--########--TURMA--########--
ALTER TABLE Turmas
    ADD CONSTRAINT fk_alunos FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno)

alter table Turmas
    add constraint fk_curso foreign key (id_curso) references Cursos (id_curso)



--########--registro de presença--########--
alter table Registro_Presenca
    add CONSTRAINT fk_turmasRP FOREIGN KEY (id_turma) references Turmas (id_turma)

alter table Registro_Presenca
    add CONSTRAINT fk_alunoRP foreign key (id_aluno) references Alunos (id_aluno)

alter table Registro_Presenca
    add constraint fk_SituacaoRP foreign key (id_situacao) references Situacao (id_situacao)

--########--TURMA--########--
--########--TURMA--########--
--########--TURMA--########--

