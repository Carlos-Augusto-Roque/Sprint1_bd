--criado banco de dados
CREATE DATABASE Senai;

--entrar no banco de dados
USE Senai;

--criado tabela "Alunos"
CREATE TABLE Alunos
(
	IdAluno INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(100) NOT NULL
	,Nota1 TINYINT NOT NULL
	,Nota2 TINYINT NOT NULL
	,Nota3 TINYINT NOT NULL
	,Nota4 TINYINT NOT NULL
	,Nota5 TINYINT NOT NULL
);

--criado tabela DadosAlunos
CREATE TABLE DadosAlunos
(
	IdDadoAluno INT PRIMARY KEY IDENTITY
	,IdAluno INT FOREIGN KEY REFERENCES	Alunos(IdAluno)
	,Curso VARCHAR(100) 
	,Periodo VARCHAR(100)
);

--criado função "Media"
CREATE FUNCTION Media (@Nome VARCHAR(50))
RETURNS	REAL
AS
	BEGIN
		DECLARE @Media REAL
		SELECT @Media = (Nota1 + Nota2 + Nota3 + Nota4 + Nota5)/5
		FROM Alunos
		WHERE        Alunos.Nome  =    @Nome
       	RETURN      @Media
    END

--criado função "MostrarNota"
CREATE FUNCTION  MostrarNota(@Valor REAL)
RETURNS TABLE
AS
	RETURN(
		SELECT Alunos.Nome,Alunos.Nota5 
		FROM Alunos
		WHERE Alunos.Nota5 > @Valor);

--criar função "Multitabelas"
CREATE FUNCTION  MultiTabelas()
RETURNS @Valores TABLE
		(Nome VARCHAR(100),Nota1 TINYINT,Curso VARCHAR(100),Periodo VARCHAR(100))
AS
	BEGIN
		INSERT @Valores(Nome,Nota1,Curso,Periodo)
			SELECT Alunos.Nome,Alunos.Nota1,DadosAlunos.Curso,DadosAlunos.Periodo
			FROM Alunos
			INNER JOIN DadosAlunos
			ON Alunos.IdAluno = DadosAlunos.IdAluno;
		RETURN
	END

	
