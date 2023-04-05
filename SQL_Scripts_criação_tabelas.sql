CREATE TABLE Alunos
(
  id_aluno int PRIMARY KEY NOT NULL,
  nome varchar(200) NOT NULL,
  data_nascimento date NOT NULL,
  sexo varchar(1) NULL,-- (M) masculino ou (F) feminino
  data_cadastro datetime NOT NULL,
  login_cadastro varchar(15) NOT NULL,
  
);

ALTER TABLE Alunos
	DROP CONSTRAINT fk_Turmas;

	SELECT * FROM [dbo].[Alunos]
CREATE TABLE Situacao
(
	id_situacao int PRIMARY KEY NOT NULL,
	situacao varchar(25) NOT NULL,
	data_cadastro datetime,
	login_cadastro varchar(15)
);

CREATE TABLE Cursos
(
id_curso int PRIMARY KEY NOT NULL,
nome_curso varchar(200)  NOT NULL,
data_cadastro datetime  NOT NULL,
login_cadastro varchar(15)  NOT NULL,
);

CREATE TABLE Turmas
(
id_turma int PRIMARY KEY  NOT NULL,
id_aluno int  NOT NULL,
id_curso int  NOT NULL,
valor_turma numeric (15,2) NOT NULL,
desconto numeric (3,2)  NOT NULL,
data_inicio date  NOT NULL,
data_termino date,
data_cadastro datetime  NOT NULL,
login_cadastro varchar(15)
);

ALTER TABLE Turmas
       ADD CONSTRAINT fk_Alunos FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno);

ALTER TABLE Turmas
		ADD CONSTRAINT fk_Curso FOREIGN KEY (id_curso) REFERENCES Cursos (id_curso);

		ALTER TABLE Turmas
	DROP CONSTRAINT fk_Alunos;

		   
CREATE TABLE Registro_Presenca
(
id_turma int  NOT NULL,
id_aluno int  NOT NULL,
id_situacao int  NOT NULL,
data_presenca date  NOT NULL,
data_cadastro date  NOT NULL,
logincadstro varchar(15)  NOT NULL
);

CREATE TABLE AlunosxTurmas
(
id_turma int NOT NULL,
id_aluno int NOT NULL,
valor numeric (13,2) NOT NULL,
valor_desconto numeric (3,2) ,
data_cadastro datetime NOT NULL,
login_cadastro varchar (15) NOT NULL
);

ALTER TABLE AlunosxTurmas
		ADD CONSTRAINT fk_turma FOREIGN KEY (id_turma) REFERENCES Turmas (id_turma);

ALTER TABLE AlunosxTurmas
		ADD CONSTRAINT fk_aluno FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno);

ALTER TABLE Registro_Presenca
       ADD CONSTRAINT fk_TurmasRP FOREIGN KEY (id_turma) REFERENCES Turmas(id_turma);

ALTER TABLE Registro_Presenca
       ADD CONSTRAINT fk_AlunoRP FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno);

ALTER TABLE Registro_Presenca
       ADD CONSTRAINT fk_SituacaoRP FOREIGN KEY (id_situacao) REFERENCES Situacao(id_situacao);

	   


DROP TABLE Turmas;
DROP TABLE Situacao;
DROP TABLE Registro_Presenca;
DROP TABLE Cursos;
DROP TABLE Alunos;




