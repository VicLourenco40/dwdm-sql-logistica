CREATE TABLE paletes (
	id_palete INT IDENTITY(1, 1) PRIMARY KEY,
	id_pedido INT FOREIGN KEY REFERENCES pedidos(id_pedido) NOT NULL,
	peso DECIMAL(6, 2) NOT NULL,
	temperatura DECIMAL(3, 1) NOT NULL
);
