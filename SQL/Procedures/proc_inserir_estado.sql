CREATE PROC inserir_estado
	@descricao VARCHAR(32)
AS
	INSERT INTO estados
	VALUES (@descricao)
