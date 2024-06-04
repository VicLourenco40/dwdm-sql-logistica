CREATE PROC inserir_palete
	@id_pedido INT,
	@peso DECIMAL(6, 2),
	@temperatura DECIMAL(3, 1)
AS
	INSERT INTO paletes
	VALUES (@id_pedido, @peso, @temperatura)
