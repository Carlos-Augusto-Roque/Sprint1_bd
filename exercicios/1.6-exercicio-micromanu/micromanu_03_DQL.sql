USE Micromanu;

SELECT * FROM Clientes;

SELECT * FROM Colaboradores;

SELECT * FROM Itens;

--- listar todos os pedidos dos clientes
SELECT * FROM Pedidos;

SELECT * FROM PedidosColaboradores;

SELECT * FROM TiposConsertos;

/*listar todos os pedidos de um determinado cliente,
mostrando quais foram os colaboradores que executaram o serviço,
qual foi o tipo de conserto, qual item foi consertado e o nome deste cliente*/
SELECT Pedidos.IdPedido AS NºPedido,Colaboradores.Nome AS Colaborador,TiposConsertos.Descricao AS TipoConserto,Itens.Nome AS Item,Clientes.Nome AS Cliente FROM Pedidos
INNER JOIN PedidosColaboradores
ON Pedidos.IdPedido = PedidosColaboradores.IdPedido
INNER JOIN Colaboradores
ON Colaboradores.IdColaborador = PedidosColaboradores.IdColaborador
INNER JOIN TiposConsertos
ON Pedidos.IdTipoConserto = TiposConsertos.IdTipoConserto
INNER JOIN Itens
ON Pedidos.IdItem = Itens.IdItem
INNER JOIN Clientes
ON Pedidos.IdCliente = Clientes.IdCliente;



