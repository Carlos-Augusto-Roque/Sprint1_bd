--cria um bd "filmes"
CREATE DATABASE Filmes;

--define o bd "filmes" que será usado
USE Filmes;

--criado a tabela Generos
CREATE TABLE Generos
(
	idGenero	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL --obrigatório o preenchido 
);

--criado a tabela Filmes
CREATE TABLE Filmes
(
	IdFilme		INT PRIMARY KEY IDENTITY
	,IdGenero	INT FOREIGN KEY REFERENCES Generos (IdGenero) --referência a chave estrangeira
	,Titulo		VARCHAR(150) NOT NULL
);