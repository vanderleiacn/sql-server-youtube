--TOTAL DE TURMAS POR CURSO 
select c.id_curso, c.nome_curso, count(t.id_turma) Total_Turmas
	from dbo.Turmas t 
		inner join dbo.Cursos c on c.id_curso = t.id_curso
group by c.id_curso, c.nome_curso;


--TODOS OS CURSOS, SE EXISTE OU NAO , TURMAS .
select c.nome_curso, count(t.id_turma) Total_Turmas 
	from dbo.Turmas t
		right join dbo.Cursos c on c.id_curso = t.id_curso  
    group by c.nome_curso;


-- LISTA COMPLETA DOS ALUNOS
select  c.nome_curso, at.valor, at.valor_desconto, t.data_inicio, t.data_termino,
		  a.nome, a.sexo
	from AlunosxTurmas at
		inner join dbo.turmas t on t.id_turma = at.id_turma
		inner join  dbo.cursos c on c.id_curso = t.id_curso
		inner join dbo.alunos a on a.id_aluno = at.id_aluno


--QUANTIDADE DE TURMAS COM ALUNOS 
select c.nome_curso, t.id_turma, count(1) Total_Alunos
	from dbo.Turmas t
	inner join AlunosxTurmas at on  at.id_turma = t.id_turma -- pq at.id_turma é igual t.id_turma? seria a ligação das duas tabelas ?
	inner join cursos c on c.id_curso = t.id_curso
group by c.nome_curso, t.id_turma      -- não ta constando os outros cursos com turmas 
	

