CREATE PROC inserir_proposito
	@descricao VARCHAR(32)
AS
	INSERT INTO propositos
	VALUES (@descricao)
