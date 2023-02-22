CREATE TABLE Alunos( -- cria uma nova tabela

	id_aluno int PRIMARY KEY NOT NULL,
	nome varchar(200) NOT NULL,
	data_nascimento date NOT NULL,
	sexo varchar(1) , ---M para masculino e F para feminino
	data_cadastro datetime NOT NULL,
	login_cadastro varchar(15) NOT NULL
	
	);

ALTER TABLE Turma
	ADD CONSTRAINT fk_Alunos FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno)

ALTER TABLE Turma
	add constraint fk_Curso foreign key (id_curso) references Cursos (id_curso)

--	DROP TABLE Alunos; --exclui uma tabela

CREATE TABLE situacao( -- cria uma nova tabela

	id_situacao int PRIMARY KEY NOT NULL,
	situacao varchar(20) not null,
	data_cadastro datetime,
	login_cadastro varchar(15)
);

---select * from Alunos -- consulta todas as colunas da tabela Alunos


CREATE TABLE cursos (
	id_curso int primary key not null,
	nome_cruso varchar(40) not null,
	data_cadastro datetime,
	login_cadastro varchar(15),
);

create table Turma(
	id_turma int primary key not null,
	id_aluno int not null,
	id_curso int not null,
	valor_turma numeric(15,2) not null,
	desconto numeric(3,2) not null,
	data_inicio datetime not null,
	data_termino datetime,
	data_cadastro datetime not null,
	login_cadastro varchar(50)

);

create table registro_presenca(
	id_turma int not null,
	id_aluno int not null,
	id_situacao int not null,
	data_cadastro date not null,
	login_cadastro date not null
);

ALTER TABLE registro_presenca
	ADD CONSTRAINT fk_TurmasRP FOREIGN KEY (id_turma) REFERENCES Turma (id_turma);

ALTER TABLE registro_presenca
	add constraint fk_AlunoRP foreign key (id_aluno) references Alunos (id_aluno);

ALTER TABLE registro_presenca
	add constraint fk_SituacaoRP foreign key (id_aluno) references Situacao (id_situacao);


/*
drop table Alunos
drop table cursos
drop table registro_presenca
drop table situacao
drop table Turma
*/

constraint fk_nome(
	foreign key (campo_atual)
	references tb_ligação
	(id_campo_tb_ligação);