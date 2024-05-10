CREATE PROC inserir_armazem
	@nome VARCHAR(32),
	@temperatura DECIMAL(3, 1)
AS
	INSERT INTO armazens
	VALUES (@nome, @temperatura)
