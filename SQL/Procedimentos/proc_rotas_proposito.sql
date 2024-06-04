-- Listar rotas por propósito

CREATE PROC rotas_proposito
	@proposito VARCHAR(32)
AS
	SELECT *
	FROM rotas
	WHERE id_proposito IN (
		SELECT id_proposito
		FROM propositos
		WHERE descricao LIKE '%' + @proposito + '%'
	)
