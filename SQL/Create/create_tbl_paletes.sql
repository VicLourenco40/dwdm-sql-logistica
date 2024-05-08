CREATE TABLE paletes (
	id_palete INT IDENTITY(1, 1) PRIMARY KEY,
	peso DECIMAL(6, 2) NOT NULL,
	temperatura DECIMAL(3, 1) NOT NULL,
	id_pedido INT FOREIGN KEY REFERENCES pedidos(id_pedidos) NOT NULL
);
