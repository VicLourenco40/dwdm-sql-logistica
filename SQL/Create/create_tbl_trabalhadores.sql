CREATE TABLE trabalhadores (
	id_trabalhador INT IDENTITY(1, 1) PRIMARY KEY,
	nome VARCHAR(32) NOT NULL,
	idade INT NOT NULL,
	morada VARCHAR(128) NOT NULL,
	telefone INT NOT NULL,
	email VARCHAR(32) NOT NULL,
	id_funcao INT FOREIGN KEY REFERENCES funcoes(id_funcao) NOT NULL
);
