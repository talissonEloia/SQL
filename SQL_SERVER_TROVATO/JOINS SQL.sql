/*
SQL SERVER - JOINs - Relacionamento entre tabelas (Inner Join, Right Join, Left Join e outros)

*/ 

-- >> Total de turmas por curso << --


-- INER JOIN: RETORNA VALORES DA TABELA_A E TABELA_B QUE CONINCIDEM
select c.id_curso, c.nome_curso, count(t.id_turma) Total_Turmas

-- conecta turmas t com curso c pelas chaves c.id_curso e t.id_curso
	from dbo.turmas t
		inner join dbo.Cursos c on c.id_curso = t.id_curso 

-- cria um novo grupo contendo c.id_curso, c.nome_curso, count(t.id`_turmas)
group by c.id_curso, c.nome_curso		

/*
OUTRA FORMA DE CONSULTA

select c.nome_curso, count(t.id_turma) Total_turmas
	from dbo.Turmas t,
		 dbo.Cursos c
	where
		c.id_curso = t.id_curso
	group by c.nome_curso

*/







-- >> Todos os cursos, independente se há ou não turmas << --

--RIGTH JOIN: Retorna os dados da tabela da direita (primiera) 
select c.nome_curso, count(t.id_turma) Total_turmas
	-- lista todos os cursos da tabela da DIREITA e conta a quantidade de turmas de cada curso
	from dbo.turmas t 
		right join dbo.cursos c on c.id_curso= t.id_curso
	group by c.nome_curso


-- >> Lista completa de alunos << --

select a.nome "Nome", a.sexo Sx, c.nome_curso Curso, at.valor Valor, at.desconto Desconto, 
		t.data_inicio Inicio, t.data_termino Termino
		
	from dbo.AlunosxTurmas at
		inner join dbo.Turmas t on t.id_turma = at.id_turmas
		inner join dbo.Cursos c on c.id_curso = t.id_curso
		inner join dbo.Alunos a on a.id_aluno = at.id_alunos


-- >> Quantidade de Turmas com alunos << --

select c.nome_curso, t.id_turma, count(1) Total
	from dbo.Turmas t
		inner join dbo.AlunosxTurmas at on at.id_turmas = t.id_turma
		inner join dbo.Cursos c on c.id_curso = t.id_turma
		
group by c.nome_curso, t.id_turma
