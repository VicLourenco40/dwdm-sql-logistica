-- Listar cami�es com, no m�nimo, X n�mero de espa�os para paletes

CREATE PROC camioes_num_paletes
	@num_paletes INT
AS
	SELECT *
	FROM camioes
	WHERE max_paletes >= @num_paletes
