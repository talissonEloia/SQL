CREATE TABLE Alunos
(
   id_aluno int PRIMARY KEY NOT NULL, 
   nome varchar(200) NOT NULL,
   data_nascimento date NOT NULL,
   sexo varchar(1) NULL, --M para Masculino ou F para Feminino
   data_cadastro datetime NOT NULL,
   login_cadastro varchar(15) NOT NULL
);

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

CREATE TABLE Registro_Presenca
(
    id_turma int not null,
	id_aluno int not null,
	id_situacao int not null,
	data_presenca date not null,
	data_cadastro date not null,
	login_cadastro varchar(15) not null
);

/*
drop table Turmas;
drop table Situacao;
drop table Registro_Presenca;
drop table Cursos;
drop table Alunos;
*/