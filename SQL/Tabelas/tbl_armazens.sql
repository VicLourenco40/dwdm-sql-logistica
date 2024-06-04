CREATE TABLE armazens (
	id_armazem INT IDENTITY(1, 1) PRIMARY KEY,
	nome VARCHAR(32) NOT NULL,
	temperatura DECIMAL(3, 1) NOT NULL
);
