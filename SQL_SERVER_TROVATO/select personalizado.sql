-- Alias, prefixos  dbo. T.

select *
	from dbo.Turmas T


select t.*
	from dbo.Turmas T

	
Select t.id_turma, t.id_curso, t.data_inicio
from dbo.Turmas T


-- Ultilixzar nomes personalizados para os campos | usar o 'AS' para tratar o titulo da coluna na exibição
Select t.id_curso AS IDC, t.id_turma IDT, t.data_inicio as Inicio
from dbo.Turmas T

-- Segunda forma sem o 'AS'
select tt.id_curso IDC,  tt.id_turma Turma, tt.data_termino "Data de Termino"
from Turmas TT


