-- Listar número de pedidos por cliente pelo nome

CREATE PROC num_pedidos_cliente
	@nome_cliente VARCHAR(32)
AS
	SELECT c.nome, COUNT(*) as num_pedidos
	FROM pedidos p
	JOIN clientes c on p.id_remetente = c.id_cliente
	WHERE p.id_remetente IN (
		SELECT id_cliente
		FROM clientes
		WHERE nome LIKE '%' + @nome_cliente + '%'
	)
	GROUP BY c.nome
