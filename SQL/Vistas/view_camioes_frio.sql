-- Cami�es que transportam mercadoria com necessidade de refrigera��o

CREATE VIEW camioes_frio
AS
	SELECT *
	FROM camioes
	WHERE temperatura = 5.0
