CREATE PROC inserir_funcao
	@nome VARCHAR(32)
AS
	INSERT INTO funcoes
	VALUES (@nome)
