CREATE DATABASE SENAI_HROADS_MANHA; 
USE SENAI_HROADS_MANHA;

CREATE TABLE Classes
(
	IdClasse INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(100) NOT NULL
);

CREATE TABLE Personagens
(
	IdPersonagem INT PRIMARY KEY IDENTITY
	,IdClasse INT FOREIGN KEY REFERENCES Classes(IdClasse) NOT NULL
	,Nome VARCHAR(100)NOT NULL
	,CapacidadeVida INT NOT NULL
	,CapacidadeMana INT NOT NULL
	,DataAtualizacao DATE NOT NULL
	,DataCriacao DATE NOT NULL
);

CREATE TABLE TiposDeHabilidades
(
	IdTipoHabilidade INT PRIMARY KEY IDENTITY 
	,Nome VARCHAR(200)
);

CREATE TABLE Habilidades
(
	IdHabilidade INT PRIMARY KEY IDENTITY
	,IdTipoHabilidade INT FOREIGN KEY REFERENCES TiposDeHabilidades(IdTipoHabilidade)
);

CREATE TABLE Classes_Habilidades
(
	IdClasse INT FOREIGN KEY REFERENCES Classes(IdClasse)
	,IdHabilidade INT FOREIGN KEY REFERENCES Habilidades(IdHabilidade)
);
