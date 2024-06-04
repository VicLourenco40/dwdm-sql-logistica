-- Trabalhadores com idade igual ou superior a 40

CREATE VIEW trabalhadores_40
AS
	SELECT *
	FROM trabalhadores
	WHERE idade >= 40
