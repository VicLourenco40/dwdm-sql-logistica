CREATE PROC inserir_cliente
	@nome VARCHAR(32),
	@morada VARCHAR(128),
	@telefone INT,
	@email VARCHAR(32)
AS
	INSERT INTO clientes
	VALUES (@nome, @morada, @telefone, @email)
