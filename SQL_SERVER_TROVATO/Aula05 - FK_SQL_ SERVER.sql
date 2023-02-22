CREATE TABLE Alunos
(
   id_aluno int PRIMARY KEY NOT NULL, 
   nome varchar(200) NOT NULL,
   data_nascimento date NOT NULL,
   sexo varchar(1) NULL, --M para Masculino ou F para Feminino
   data_cadastro datetime NOT NULL,
   login_cadastro varchar(15) NOT NULL
);

ALTER TABLE Alunos
	DROP CONSTRAINT fk_Turmas;

--DROP TABLE Alunos;

CREATE TABLE Situacao
(
   id_situacao int PRIMARY KEY NOT NULL,
   situacao varchar(25) not null,
   data_cadastro datetime,
   login_cadastro varchar(15)
);

create table Cursos
(
   id_curso int PRIMARY KEY not null,
   nome_curso varchar(200) not null,
   data_cadastro datetime not null,
   login_cadastro varchar(15) not null
);

CREATE TABLE Turmas
(
    id_turma int PRIMARY KEY NOT NULL,
	id_aluno int NOT NULL,
	id_curso int NOT NULL,
	valor_turma numeric(15,2) not null,
	desconto numeric(3,2) not null,
	data_inicio date not null,
	data_termino date,
	data_cadastro datetime not null,
	login_cadastro varchar(15)
);

ALTER TABLE Turmas
		ADD CONSTRAINT fk_Alunos FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno);

ALTER TABLE Turmas
		ADD CONSTRAINT fk_Curso FOREIGN KEY (id_curso) REFERENCES Cursos (id_curso);
			   		 
CREATE TABLE Registro_Presenca
(
    id_turma int not null,
	id_aluno int not null,
	id_situacao int not null,
	data_presenca date not null,
	data_cadastro date not null,
	login_cadastro varchar(15) not null
);

ALTER TABLE Registro_Presenca
      ADD CONSTRAINT fk_TurmasRP FOREIGN KEY (id_turma) REFERENCES Turmas (id_turma);

ALTER TABLE Registro_Presenca
      ADD CONSTRAINT fk_AlunoRP FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno);

ALTER TABLE Registro_Presenca
      ADD CONSTRAINT fk_SituacaoRP FOREIGN KEY (id_situacao) REFERENCES Situacao (id_situacao);

/*
drop table Turmas;
drop table Situacao;
drop table Registro_Presenca;
drop table Cursos;
drop table Alunos;
*/