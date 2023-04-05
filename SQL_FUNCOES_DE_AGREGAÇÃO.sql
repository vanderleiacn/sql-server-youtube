--OPERAÇÕES DE AGREGAÇÃO NO SELECT 

--GANHO COM TURMAS
--1° Quanto paga cada aluno
select c.nome_curso, t.id_turma, at.valor Valor_bruto,
		at.valor * at.valor_desconto Valor_desconto,
		at.valor - (at.valor * at.valor_desconto) Valor_liquido
	from dbo.Turmas t
	inner join AlunosxTurmas at on at.id_turma = t.id_turma
	inner join Cursos c on c.id_curso = t.id_curso

--2° SOMATORIA
select c.nome_curso,sum(at.valor) Valor_bruto,
		sum(at.valor * at.valor_desconto) Valor_desconto,
		sum(at.valor - (at.valor * at.valor_desconto)) Valor_liquido
	from dbo.Turmas t
	inner join AlunosxTurmas at on at.id_turma = t.id_turma
	inner join Cursos c on c.id_curso = t.id_curso
group by c.nome_curso

--3° SOMATORIA POR CURSO X TURMA 
select c.nome_curso,t.id_turma, sum(at.valor) Valor_bruto,
		sum(at.valor * at.valor_desconto) Valor_desconto,
		sum(at.valor - (at.valor * at.valor_desconto)) Valor_liquido
	from dbo.Turmas t
	inner join AlunosxTurmas at on at.id_turma = t.id_turma
	inner join Cursos c on c.id_curso = t.id_curso
group by c.nome_curso,t.id_turma

--4°ARREDONDAMENTO DOS VALORES 
select c.nome_curso,t.id_turma, sum(at.valor) Valor_bruto,
		round(sum(at.valor * at.valor_desconto),2) Valor_desconto,
		round(sum(at.valor - (at.valor * at.valor_desconto)),2) Valor_liquido
	from dbo.Turmas t
	inner join AlunosxTurmas at on at.id_turma = t.id_turma
	inner join Cursos c on c.id_curso = t.id_curso
group by c.nome_curso,t.id_turma

--5° GANHO POR ANO
select year(t.data_inicio) ano,
	   sum(at.valor) Valor_bruto,
		round(sum(at.valor * at.valor_desconto),2) Valor_desconto, --round funçao de arredondamento
		round(sum(at.valor - (at.valor * at.valor_desconto)),2) Valor_liquido
	from dbo.Turmas t
	inner join AlunosxTurmas at on at.id_turma = t.id_turma
	inner join Cursos c on c.id_curso = t.id_curso
group by year(t.data_inicio)

-----------------------------------------------------------------------
--VALOR TOTAL POR TURMA
select t.id_turma, sum(at.valor) as Total
	from AlunosxTurmas at
	inner join dbo.Turmas t on t.id_turma = at.id_turma
group by t.id_turma


-----------------------------------------------------------------------
-- VALOR TOTAL POR TURMA E NOME DO CURSO
select t.id_turma,c.nome_curso, sum(at.valor) as Total
	from AlunosxTurmas at
	inner join dbo.Turmas t on t.id_turma = at.id_turma
	inner join dbo.Cursos c on c.id_curso = t.id_curso
group by t.id_turma,c.nome_curso

-----------------------------------------------------------------------
-- SUBQUERY   - usar uma query dentro de outra query

SELECT SUM(v.Total) from 
(
select t.id_turma,c.nome_curso, sum(at.valor) as Total
	from AlunosxTurmas at
	inner join dbo.Turmas t on t.id_turma = at.id_turma
	inner join dbo.Cursos c on c.id_curso = t.id_curso
group by t.id_turma,c.nome_curso
)v -- esse v se refere ao AS da tabela interna

------------------------------------------------------------------------
--TOTAL DE ALUNOS POR TURMA e VALOR TOTAL

select t.id_turma, count(at.id_aluno) as Total_Aunos, sum(at.valor) Valor_Total
	from AlunosxTurmas at
	inner join dbo.Turmas t on t.id_turma = at.id_turma
group by t.id_turma

--------------------------------------------------------------------------
-- MÉDIA DE RECEBIMENTO PARA CURSO
select t.id_turma,c.nome_curso, AVG(at.valor) as Total
	from AlunosxTurmas at
	inner join dbo.Turmas t on t.id_turma = at.id_turma
	inner join dbo.Cursos c on c.id_curso = t.id_curso
group by t.id_turma,c.nome_curso
--------------------------------------------------------------------------

-- MAIOR VALOR PAGO DE CADA CURSO
select t.id_turma,c.nome_curso, MAX(at.valor) as Total
	from AlunosxTurmas at
	inner join dbo.Turmas t on t.id_turma = at.id_turma
	inner join dbo.Cursos c on c.id_curso = t.id_curso
group by t.id_turma,c.nome_curso

--------------------------------------------------------------------------
-- MENOR VALOR PAGO DE CADA CURSO
select t.id_turma,c.nome_curso, MIN(at.valor) as Total
	from AlunosxTurmas at
	inner join dbo.Turmas t on t.id_turma = at.id_turma
	inner join dbo.Cursos c on c.id_curso = t.id_curso
group by t.id_turma,c.nome_curso

---------------------------------------------------------------------------
---- MAIOR E MENOR VALOR PAGO DE CADA CURSO
select t.id_turma,c.nome_curso,MIN(at.valor) as Valor_minimo, MAX(at.valor) as Valor_maximo
	from AlunosxTurmas at
	inner join dbo.Turmas t on t.id_turma = at.id_turma
	inner join dbo.Cursos c on c.id_curso = t.id_curso
group by t.id_turma,c.nome_curso
------------------------------------------------------------------------------

--DIFERENÇA DE VALOR ENTRE O MAXIMO E O MINIMO
select t.id_turma,c.nome_curso,MIN(at.valor) as Valor_minimo, MAX(at.valor) as Valor_maximo,
		max(at.valor) - min(at.valor) as Diferença
	from AlunosxTurmas at
	inner join dbo.Turmas t on t.id_turma = at.id_turma
	inner join dbo.Cursos c on c.id_curso = t.id_curso
group by t.id_turma,c.nome_curso




