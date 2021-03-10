USE Locadora;

--inserindo dados nas tabela do bd 

INSERT INTO Clientes (Nome,Cpf)
VALUES ('Gabriel','55645678932'),('Patrick', '58765432112');

INSERT INTO Empresas (RazaoSocial,Site)
VALUES ('Carlos Alugueis', 'carlosalugueis@gmail.com'),('Localiza Veiculos', 'localiza@email.com');

INSERT INTO	Marcas (NomeMarca)
VALUES ('Chevrolet'),('Toyota');

INSERT INTO Modelos (IdMarca,NomeModelo)
VALUES (1,'Blazer'),(2,'Corolla');

INSERT INTO Veiculos (IdEmpresa,IdModelo,Placa)
VALUES (1,2,'FNE5378'),(2,1,'DTP5349');

INSERT INTO alugueis (IdCliente,IdVeiculo,DataRetirada,DataEntrega)
VALUES (14,2,'25/12/1993','27/12/1993'),(13,2,'20/05/1985','22/06/1985');

--alterando um cliente
UPDATE Clientes
SET Nome = 'Joao'
WHERE IdCliente = 9;

--deletando um cliente
DELETE FROM alugueis
WHERE IdAluguel = 1;

--deletando a tabela inteira
DELETE FROM alugueis;

DELETE FROM Clientes;

