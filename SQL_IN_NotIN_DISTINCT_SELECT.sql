--SELECTS DIVERSOS COM FUNÇÃO DE AGREGAÇÃO

--TOTAL DE TURMAS POR CURSOS
select c.id_curso, c.nome_curso, count(t.id_turma) as Total_Turma
	from dbo.Turmas t
		inner join dbo.cursos c on c.id_curso = t.id_curso
group by c.id_curso,c.nome_curso

-- QUANTIDADE DE TURMA POR CURSO 
select *
	from dbo.Turmas
	where id_curso = 1; 

	select *
		from dbo.turmas
		where id_curso = 2;


--CLAUSULA IN 
select*
	from dbo.Turmas
	where id_curso in (1,5); -- tras todos os registros da tabela turma, onde o id_curso  1 e 5  estao sendo visto no mesmo select

	--CLAUSULA NOT IN 
select *
	from dbo.Turmas
	where id_curso not in(1,5); -- retorna todos os registros que nao estao dentro do parametro 

--ANO DE NASCIMENTO DOS ALUNOS
--DISTINCT ( selecione apenas um registro de cada )
select distinct  datepart(year, data_nascimento) --datepart (parte de uma data)
	from dbo.Alunos
	order by 1 --ASC crescente
	-- classificado pela coluna , nesse caso apenas uma coluna usa o 1.


select distinct  datepart(year, data_nascimento) --datepart (parte de uma data)
	from dbo.Alunos
    order by 1 Desc; --decrescente

--LISTA COMPLETA DE ALUNOS
select  c.nome_curso, 
		c.id_curso,
		at.valor,
		at.valor_desconto,
		t.data_inicio,
		t.data_termino,
		a.nome,
		a.sexo
	from AlunosxTurmas at
	inner join  dbo.Turmas t on (t.id_turma = at.id_turma)
	inner join dbo.Cursos c on (c.id_curso = t.id_curso)
	inner join dbo.Alunos a on (a.id_aluno = at.id_aluno)
	-- tenho uma aluna mulher, mas nao ta nessa lista. pq?
	--sera pq ela nao esta em nenhuma turma ?


