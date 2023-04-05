SELECT * FROM dbo.Alunos
SELECT * FROM dbo.AlunosxTurmas
SELECT * FROM dbo.Cursos
SELECT * FROM dbo.Registro_Presenca
SELECT * FROM dbo.Situacao
SELECT * FROM dbo.Turmas


   select a.*
		from Alunos a
		where a.nome = 'Alan Mazoni Alves'


    select a.*
		from Alunos a
		where a.data_nascimento <= '01/01/2003'


	select a.*
		from alunos a
		where a.sexo = 'M'
			and a.data_nascimento <= '01/01/2023'
			and a.id_aluno > 3


	select a.nome,a.sexo, YEAR(a.data_nascimento) ano
		from alunos a
		where a.data_nascimento <= '01/01/2003'


		select at.*
			from AlunosxTurmas at
			where at.valor > 400

	
	    select id_aluno,at.valor * at.valor_desconto as desconto
			from AlunosxTurmas at

	    select at.id_aluno,at.valor * at.valor_desconto as desconto
			from AlunosxTurmas at
			where at.valor > 500

		select FLOOR( at.valor * at.valor_desconto) as desconto  -- floor funçao arredonda para as casas inteiras
			from AlunosxTurmas at
			where at.valor_desconto > 0
			and at.valor > 500

		
		
		select  c.nome_curso, t.data_inicio, t.data_termino,
				floor(at.valor) valor_bruto, floor((at.valor * at.valor_desconto)) as desconto,
				floor(at.valor - (at.valor * at.valor_desconto)) as valor_liquido
			from AlunosxTurmas at, Turmas t, Cursos c
			where at.id_turma = t.id_turma
			and t.id_curso = c.id_curso
			and t.id_turma = 1 -- nessa ultima linha aparece apenas os alunos do curso de VBA I 

	 	

		
	





	 /*
	> maior
	< menor
	>= maior ou igual
	<= menor ou igual
	<> diferente
	= igual 
	*/

	


