select a.*
	from Alunos a
where a.nome =	'Alan Moraes'

select a.*
	from Alunos a
where a.data_nascimento >	'01/01/2003'

-- > maior
-- > menor
-- >= maior ou igual
-- <= menor ou igual
-- <> diferente
-- = igual


select a.nome, a.data_nascimento, a.sexo from alunos a where sexo = 'M'

-- usando FILTROS DE CONSULTA
select a.* 
	from alunos a
	where a.sexo = 'M' 
	and a.data_nascimento >= '01/01/2003'
	and a.id_aluno > 500


Select a.nome "Nome Aluno", a.sexo "Sexo Aluno", year(a.data_nascimento) "Ano de nascimento"
	from alunos a
	where a.data_nascimento >= '01/01/2003'

select *
	from AlunosxTurmas at
	where at.valor > 500

select at.id_alunos, floor(at.valor * at.desconto) as "Desconto"
	from AlunosxTurmas at
	where at.valor > 500

select at.valor * at.desconto "Desconto"
	from AlunosxTurmas at
	where at.desconto > 0
	and at.valor > 500


--##########-- JOIN (JUNTAR - UNIR) --##########-- 

select c.nome_curso, t.data_inicio, t.data_termino, 
		floor (at.valor) as Valor_bruto,
		floor(at.valor * at.desconto) as "Desconto",
		floor(at.valor-(at.valor * at.desconto)) as valor_liquido

	from AlunosxTurmas at, Turmas t, Cursos C
	where at.id_turmas = t.id_turma
	and t.id_curso = c.id_curso
	and t.id_turma = 6