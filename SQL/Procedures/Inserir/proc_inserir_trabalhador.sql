CREATE PROC inserir_trabalhador
	@nome VARCHAR(32),
	@idade INT,
	@morada VARCHAR(128),
	@telefone INT,
	@email VARCHAR(32),
	@id_funcao INT
AS
	INSERT INTO trabalhadores
	VALUES (@nome, @idade, @morada, @telefone, @email, @id_funcao)
