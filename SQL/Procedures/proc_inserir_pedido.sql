CREATE PROC inserir_pedido
	@id_remetente INT,
	@id_destinatario INT,
	@descricao VARCHAR(128),
	@data_envio DATE,
	@data_entrega DATE,
	@id_estado INT,
	@id_armazem INT,
	@id_rota INT
AS
    INSERT INTO pedidos
    VALUES (@id_remetente, @id_destinatario, @descricao, @data_envio, @data_entrega,
			@id_estado, @id_armazem, @id_rota)
