CREATE TABLE pedidos (
	id_pedido INT IDENTITY(1, 1) PRIMARY KEY,
	id_remetente INT FOREIGN KEY REFERENCES clientes(id_cliente) NOT NULL,
	id_destinatario INT FOREIGN KEY REFERENCES clientes(id_cliente) NOT NULL,
	data_envio DATE NOT NULL,
	data_entrega DATE NOT NULL,
	id_estado INT FOREIGN KEY REFERENCES estados(id_estado) NOT NULL,
	id_armazem INT FOREIGN KEY REFERENCES armazens(id_armazem),
	id_rota INT FOREIGN KEY REFERENCES rotas(id_rota)
);
