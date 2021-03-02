USE Ecommerce;

--inserido os dados nos campos das tabelas
INSERT INTO Clientes (Nome)
VALUES ('Gabriel'),('Paulo');

INSERT INTO Lojas(Nome)
VALUES ('Senai Shop'),('Magazine');

INSERT INTO Categorias (Nome,IdLoja)
VALUES ('Eletrônicos',1),('Eletrodomésticos',2);

INSERT INTO SubCategorias (Nome,IdCategoria)
VALUES ('Celular',1),('Geladeira',2);

INSERT INTO Produtos(Titulo,Valor,IdSubCategoria)
VALUES ('Iphone 12 Pro Max',8000,1),('Philips 600L',3500,2);

INSERT INTO Pedidos(NumPedido,IdCliente,DataPedido,[Status])
VALUES (001,1,'2015-05-30',1),(002,2,'2017-03-25',0);

INSERT INTO PedidosProdutos(IdPedido,IdProduto)
VALUES (1,1),(2,2);

UPDATE Pedidos
SET Status =  'Entregue' WHERE IdPedido = 1;

UPDATE Pedidos
SET Status =  'Em andamento' WHERE IdPedido = 2;

DELETE FROM Pedidos WHERE IdPedido = 4;

DELETE FROM Clientes WHERE IdCliente = 3;
DELETE FROM Clientes WHERE IdCliente = 4;

DELETE FROM Lojas WHERE IdLoja = 3;
DELETE FROM Lojas WHERE IdLoja = 4;

DELETE FROM Categorias WHERE IdCategoria = 3;
DELETE FROM Categorias WHERE IdCategoria = 4;

DELETE FROM SubCategorias WHERE IdSubCategoria = 3;
DELETE FROM SubCategorias WHERE IdSubCategoria = 4;

DELETE FROM Produtos WHERE IdProduto = 3;
DELETE FROM Produtos WHERE IdProduto = 4;

DELETE FROM PedidosProdutos WHERE IdPedido = 1;
DELETE FROM PedidosProdutos WHERE IdPedido = 2;

