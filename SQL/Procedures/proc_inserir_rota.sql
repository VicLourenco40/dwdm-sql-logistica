CREATE PROC inserir_rota
	@id_proposito INT,
	@id_planeador INT,
	@id_condutor INT,
	@id_camiao INT
AS
	INSERT INTO rotas
	VALUES (@id_proposito, @id_planeador, @id_condutor, @id_camiao)
