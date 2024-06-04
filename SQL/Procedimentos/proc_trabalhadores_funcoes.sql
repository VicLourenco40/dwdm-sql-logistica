-- Listar trabalhadores por função

CREATE PROC trabalhadores_funcoes
	@funcao VARCHAR(32)
AS
	SELECT *
	FROM trabalhadores
	WHERE id_funcao IN (
		SELECT id_funcao
		FROM funcoes
		WHERE nome LIKE '%' + @funcao + '%' 
	)
