-- Camiões que transportam mercadoria com necessidade de refrigeração

CREATE VIEW camioes_frio
AS
	SELECT *
	FROM camioes
	WHERE temperatura = 5.0
