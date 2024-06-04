-- Listar pedidos por data de entrega

CREATE PROC pedidos_data_entrega
	@data_entrega DATE
AS
	SELECT *
	FROM pedidos
	WHERE data_entrega = @data_entrega
