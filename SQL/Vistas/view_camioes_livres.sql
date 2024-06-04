-- Camiões sem rota atribuída

CREATE VIEW camioes_livres
AS
	SELECT *
	FROM camioes
	WHERE id_camiao NOT IN (
		SELECT id_camiao
		FROM rotas
	)
