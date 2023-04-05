--FUNÇOES DE TEXTO


--ASCII (RETORNA O CODIGO NUMERICO DA TABELA ASCII REFERENTE AO CARACTER QUE ESTA SENDO PARAMETRO)
select ascii('a');
select ascii('A');
select ascii('9');
select ascii('Vanderleia');-- (nesse exemplo pega apenas o caracter da esquerda (V))

--NCHAR (retorna qual é o caracter a partir do numero) 
select nchar(65);
select nchar(97);
select nchar(57);
select nchar(86);

--CHAR (converte um codigo Ascii do tipo int em um valor de caracter)
 select char(65);
 select char(97);

 --CHARINDEX (pesquisa um caractere em uma sequencia de até 8.000 caracteres 
 select charindex('a','trovato');
 select charindex('a','trovato',6);
 select charindex('candido','alessandro trovato candido',1);
 select charindex('vanderleia','cavalcante nascimento vanderleia',20);

 select * from alunos;

 select a.nome, charindex('Prado',a.nome,1)--com essa seleção indica apenas os alunos que tem Prado no nome 
	from Alunos a;

	--com essa seleção indica apenas os alunos que tem Prado no nome e qual a posição que esta
	select a.nome, charindex('Prado', a.nome,1)
		from Alunos a
	where convert(int, charindex('Prado', a.nome, 1)) > 0 -- Prado ta indicando na posição 12, porem não inicia na letra P


	select a.nome, charindex('Prado', a.nome,1)
		from Alunos a
	where charindex('Prado', a.nome, 1) <> 0

--CONCAT 
select concat('Alessandro', ' ', 'Trovato');
select concat('Alessandro', ' || ', 'Trovato');
select 'Alessandro' + ' ' + 'Trovato';

select concat(a.nome ,' - ', c.nome_curso) as "Nome do aluno - Curso"
	from Alunos a
	inner join AlunosxTurmas at on at.id_aluno = a.id_aluno
	inner join Turmas t on t.id_turma = at.id_turma
	inner join Cursos c on c.id_curso = t.id_curso;

--CONCAT_WS 
-- ' - ' esse é o separador 
select concat_ws(' - ','Alessandro','Trovato','Candido');

select concat_ws(' - ', a.nome, c.nome_curso,
				'Inicio : ' + convert(char, t.data_inicio),	
				'Termino : ' + convert(char,t.data_termino))
		from Alunos a
			inner join AlunosxTurmas at on at.id_aluno = a.id_aluno
			inner join Turmas t on t.id_turma = at.id_turma
			inner join Cursos c on c.id_curso = t.id_curso;

--TRIM limpa os espaços desnecessarios
select concat_ws(' - ', a.nome, c.nome_curso,
				'Inicio : ' + trim(convert(char, t.data_inicio)),	
				'Termino : ' + trim(convert(char,t.data_termino)))
		from Alunos a
			inner join AlunosxTurmas at on at.id_aluno = a.id_aluno
			inner join Turmas t on t.id_turma = at.id_turma
			inner join Cursos c on c.id_curso = t.id_curso;


--DIFFERENCE (ESCALA DE 0 A 4)
--0 INDICA QUANDO NAO EXISTE MUITA SIMILARIDADE ENTRE OS NOMES
--4 INDICA QUANDO  EXISTE MUITA SIMILARIDADE ENTRE OS NOMES

select difference('Alessandro','Alexsandro');
select difference('Alessandro','Alex');
select difference('Alessandro','Sandro');
select difference('Alessandro','Excel');
select difference('Alessandro','Youtube');

--FORMAT (retorna um valor formatado e a cultura opcional(especificar))
-- para dados dos tipos gerais usar CAST ou CONVERT 

select convert(char,getdate(),103);

declare @dt datetime = getdate();
select format(@dt,'d','en-US') as Americano,
	   format(@dt,'d','zh-cn') as Chines_Simplificado,
	   format(@dt,'d','de-de') as Alemao,
	   format(@dt,'D','en-US') as Americano,
	   format(@dt,'D','zh-cn') as Chines_Simplificado,
	   format(@dt,'D','de-de') as Alemao;


 
		
 