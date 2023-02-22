select * -- * Todos os registros
    from dbo.turmas -- dbo = almer(proprietario) da tabela

select turmas.* --tabela.* idenficica a tabela a qual está consutando. substituida pelo *
    from turmas

/*
        selecoinar alguns campos da tabela'
*/


select id_curso,data_inicio -- select 'colunas' indica qual coluna deseja consultar 
    from dbo.turmas

select * from dbo.turmas