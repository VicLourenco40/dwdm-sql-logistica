-- Listar camiões com, no mínimo, X número de espaços para paletes

CREATE PROC camioes_num_paletes
	@num_paletes INT
AS
	SELECT *
	FROM camioes
	WHERE max_paletes >= @num_paletes
