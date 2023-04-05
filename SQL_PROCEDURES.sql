CREATE PROCEDURE IncluirNovoCursoComValidacao
	@NomeCurso      varchar(100), -- variavel de entrada
	@LoginCadastro  varchar(100)  -- variavel de entrada
AS
BEGIN
	DECLARE @vIdCurso     int; --variavel interna 
	DECLARE @vExisteCurso int;

	SELECT @vExisteCurso = id_curso from cursos where nome_curso = @NomeCurso;

	if @vExisteCurso > 0
		begin
			select 'O curso ja existe! Gravação nao realizada ' as  retorno
		end	
	else
		begin
		    select @vIdCurso = max(id_curso) + 1 from cursos;

			insert into cursos (id_curso,nome_curso,data_cadastro,login_cadastro)
				values (@vIdCurso,@NomeCurso,getdate(),@LoginCadastro);

			select @vIdCurso = id_curso from cursos where id_curso = @vIdCurso

			select @vIdCurso as retorno;
		end
END;
GO

EXEC IncluirNovoCursoComValidacao 'VBA com Alessandro Trovato', 'ATROVATO';

EXEC IncluirNovoCursoComValidacao 'WebScraping','MRodrigues';

select * from cursos

--Como utilizar uma PROCEDURE em uma planilha do Excel

