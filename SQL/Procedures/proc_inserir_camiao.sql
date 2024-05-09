CREATE PROC inserir_camiao
	@temperatura DECIMAL(3, 1),
	@max_paletes INT,
	@id_armazem INT
AS
	INSERT INTO camioes
	VALUES (@temperatura, @max_paletes, @id_armazem)
