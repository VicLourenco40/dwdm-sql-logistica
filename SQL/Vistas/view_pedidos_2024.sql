-- Pedidos feitos em 2024

CREATE VIEW pedidos_2024
AS
	SELECT *
	FROM pedidos
	WHERE YEAR(data_entrega) = 2024
