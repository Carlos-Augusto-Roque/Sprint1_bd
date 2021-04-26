USE Filmes;

--inserido valores na tabela Generos
INSERT INTO Generos(Nome)
VALUES ('Comedia'),('Ação'),('Terror');

--inserido valores na tabela Filmes
INSERT INTO Filmes(IdGenero,Titulo)
VALUES (1,'Debby Loyd'),(2,'M.I.'),(3,'O grito');

INSERT INTO Usuarios (Email,Senha,Permissao)
VALUES ('carlosacgr@gmail.com','1234','Usuario')
      ,('adm@gmail.com','1234','Administrador');