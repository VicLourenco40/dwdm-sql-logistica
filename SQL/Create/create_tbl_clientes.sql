CREATE TABLE clientes (
	id_cliente INT IDENTITY(1, 1) PRIMARY KEY,
	nome VARCHAR(32),
	morada VARCHAR(128),
	telefone INT,
	email VARCHAR(32)
);
