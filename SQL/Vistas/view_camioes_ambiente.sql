-- Camiões que transportam mercadoria à temperatura ambiente

CREATE VIEW camioes_ambiente
AS
	SELECT *
	FROM camioes
	WHERE temperatura = 18.0
