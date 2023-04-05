INSERT INTO [dbo].[Alunos]
(id_aluno,nome,data_nascimento,sexo,data_cadastro,login_cadastro)
VALUES
(2,'Alessandro Henrique Peres Porfirio', '04/10/1989', 'M', '02/11/2019 15:00:00','ALESS')

INSERT INTO [dbo].[Alunos]
(id_aluno,nome,data_nascimento,sexo,data_cadastro,login_cadastro)
VALUES
(3,' Alexander Brian Chow',GETDATE(),'M', GETDATE(),' ALESS')

INSERT INTO [dbo].[Alunos]
(id_aluno,nome,data_nascimento,sexo,data_cadastro,login_cadastro)
VALUES
(4,' Alexander Brian Chow','05/10/2000','M','05/10/2000',' ALESS')


update dbo.Alunos set data_nascimento = '02/11/1989' where id_aluno = 3;

update dbo.Alunos set nome = ' Alexander Prado' where id_aluno = 4;


INSERT INTO [dbo].[Alunos]
(id_aluno,nome,data_nascimento,sexo,data_cadastro,login_cadastro)
VALUES
(5,'Alexandre Moraes','6/6/1989','M',GETDATE(),' ALESS')

INSERT INTO [dbo].[Alunos]
(id_aluno,nome,data_nascimento,sexo,data_cadastro,login_cadastro)
VALUES
(6,'Adriana Buendia','6/6/2003','M','05/09/2020',' ALESS')

SELECT * FROM [dbo].[Alunos]

INSERT INTO dbo.Cursos
(id_curso,nome_curso,data_cadastro,login_cadastro)
VALUES
(1,'VBA I','02/11/2019 15:00:00','ALESS')

INSERT INTO dbo.Cursos
(id_curso,nome_curso,data_cadastro,login_cadastro)
VALUES
(2,'VBA II','02/11/2019 15:00:00','ALESS')

INSERT INTO dbo.Cursos
(id_curso,nome_curso,data_cadastro,login_cadastro)
VALUES
(3,'VBA III','02/11/2019 15:00:00','ALESS')

INSERT INTO dbo.Cursos
(id_curso,nome_curso,data_cadastro,login_cadastro)
VALUES
(4,'Excel Basico','02/11/2019 15:00:00','ALESS')

INSERT INTO dbo.Cursos
(id_curso,nome_curso,data_cadastro,login_cadastro)
VALUES
(5,'Excel Intermediario','02/11/2019 15:00:00','ALESS')

INSERT INTO dbo.Cursos
(id_curso,nome_curso,data_cadastro,login_cadastro)
VALUES
(6,'Excel Avançado','02/11/2019 15:00:00','ALESS')

INSERT INTO dbo.Cursos
(id_curso,nome_curso,data_cadastro,login_cadastro)
VALUES
(7,'Pacote Office Completo','02/11/2019 15:00:00','ALESS')

INSERT INTO dbo.Cursos
(id_curso,nome_curso,data_cadastro,login_cadastro)
VALUES
(8,'Word','02/11/2019 15:00:00','ALESS')

INSERT INTO dbo.Cursos
(id_curso,nome_curso,data_cadastro,login_cadastro)
VALUES
(9,'PowerPoint','02/11/2019 15:00:00','ALESS')


INSERT INTO dbo.Cursos
(id_curso,nome_curso,data_cadastro,login_cadastro)
VALUES
(10,'Access','02/11/2019 15:00:00','ALESS')


INSERT INTO dbo.Cursos
(id_curso,nome_curso,data_cadastro,login_cadastro)
VALUES
(11,'Word Avançado','02/11/2019 15:00:00','ALESS')

SELECT * FROM dbo.Cursos


INSERT INTO dbo.Situacao
(id_situacao,situacao,data_cadastro,login_cadastro)
VALUES
(1,'Presença confirmada','02/11/2019 15:00:00','ALESS')

INSERT INTO dbo.Situacao
(id_situacao,situacao,data_cadastro,login_cadastro)
VALUES
(2,'Ausente Sem Justificativa','02/11/2019 15:00:00','ALESS')

INSERT INTO dbo.Situacao
(id_situacao,situacao,data_cadastro,login_cadastro)
VALUES
(3,'Ausente com Justificativa','02/11/2019 15:00:00','ALESS')

SELECT * FROM dbo.Situacao



INSERT INTO Turmas
(id_turma, id_curso, data_inicio, data_termino,data_cadastro,login_cadastro)
VALUES
(1,1,GETDATE(),GETDATE(),GETDATE(),'Alessandro') 


INSERT INTO Turmas
(id_turma, id_curso, data_inicio, data_termino,data_cadastro,login_cadastro)
VALUES
(2,2,GETDATE(),GETDATE(),GETDATE(),'Alessandro') 

INSERT INTO Turmas
(id_turma, id_curso, data_inicio, data_termino,data_cadastro,login_cadastro)
VALUES
(3,2,GETDATE(),GETDATE(),GETDATE(),'Alessandro') 

INSERT INTO Turmas
(id_turma, id_curso, data_inicio, data_termino,data_cadastro,login_cadastro)
VALUES
(4,5,GETDATE(),GETDATE(),GETDATE(),'Alessandro') 

INSERT INTO Turmas
(id_turma, id_curso, data_inicio, data_termino,data_cadastro,login_cadastro)
VALUES
(5,5,GETDATE(),GETDATE(),GETDATE(),'Alessandro')

INSERT INTO Turmas
(id_turma, id_curso, data_inicio, data_termino,data_cadastro,login_cadastro)
VALUES
(7,6,GETDATE(),GETDATE(),GETDATE(),'Alessandro')



SELECT * FROM Turmas

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, valor_desconto, data_cadastro,login_cadastro)
VALUES
(1, 3, 1200, 0.1, GETDATE(),'Alessandro');

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, valor_desconto, data_cadastro,login_cadastro)
VALUES
(1, 2, 1800, 0.6, GETDATE(),'Alessandro');

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, valor_desconto, data_cadastro,login_cadastro)
VALUES
(1, 3, 500, 0.3, GETDATE(),'Alessandro');

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, valor_desconto, data_cadastro,login_cadastro)
VALUES
(1, 5, 700, 0.1, GETDATE(),'Alessandro');

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, valor_desconto, data_cadastro,login_cadastro)
VALUES
(2, 4, 700, 0.1, GETDATE(),'Alessandro');

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, valor_desconto, data_cadastro,login_cadastro)
VALUES
(7, 6, 855, 0.15, GETDATE(),'Alessandro');


SELECT * FROM AlunosxTurmas

--APAGAR COLUNA DESNECESSARIA DA TABELA TURMAS 

ALTER TABLE Turmas
DROP CONSTRAINT fk_alunos;

ALTER TABLE Turmas
DROP COLUMN id_aluno;

ALTER TABLE Turmas
DROP  COLUMN valor_turma;

ALTER TABLE Turmas
DROP  COLUMN desconto;




