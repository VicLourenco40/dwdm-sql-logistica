-- A empresa "Nutri��o Completa", que recebe um pedido no dia 2024-01-12,
-- necessita uma recolha urgente de 10 paletes nesse mesmo dia.
-- Verificar se o cami�o de entrega tem espa�o suficiente para transportar estas
-- paletes de volta para o armaz�m.

DECLARE @max_paletes INT;
DECLARE @num_paletes_rota INT;
DECLARE @num_paletes_pedido INT;

SET @max_paletes = (
	SELECT max_paletes
	FROM camioes
	WHERE id_camiao = (
		SELECT r.id_camiao
		FROM rotas r
		JOIN pedidos p ON p.id_rota = r.id_rota
		WHERE p.id_destinatario = (
			SELECT id_cliente
			FROM clientes
			WHERE nome LIKE 'Nutri��o Completa'
		) AND r.id_proposito = (
			SELECT id_proposito
			FROM propositos
			WHERE descricao LIKE 'Entrega'
		) AND p.data_entrega = '2024-01-12'
	)
)

SET @num_paletes_rota = (
	SELECT COUNT(*)
	FROM paletes
	WHERE id_pedido IN (
		SELECT id_pedido
		FROM pedidos
		WHERE id_rota = (
			SELECT r.id_rota
			FROM rotas r
			JOIN pedidos p ON p.id_rota = r.id_rota
			WHERE p.id_destinatario = (
				SELECT id_cliente
				FROM clientes
				WHERE nome LIKE 'Nutri��o Completa'
			) AND r.id_proposito = (
				SELECT id_proposito
				FROM propositos
				WHERE descricao LIKE 'Entrega'
			) AND p.data_entrega = '2024-01-12'
		)
	)
)

SET @num_paletes_pedido = (
	SELECT COUNT(*)
	FROM paletes
	WHERE id_pedido IN (
		SELECT id_pedido
		FROM pedidos
		WHERE id_rota = (
			SELECT r.id_rota
			FROM rotas r
			JOIN pedidos p ON p.id_rota = r.id_rota
			WHERE p.id_destinatario = (
				SELECT id_cliente
				FROM clientes
				WHERE nome LIKE 'Nutri��o Completa'
			) AND r.id_proposito = (
				SELECT id_proposito
				FROM propositos
				WHERE descricao LIKE 'Entrega'
			) AND p.data_entrega = '2024-01-12'
		) AND id_destinatario = (
			SELECT id_cliente
			FROM clientes
			WHERE nome LIKE 'Nutri��o Completa'
		)
	)
)

IF @max_paletes - @num_paletes_rota + @num_paletes_pedido - 10 >= 0
	PRINT 'O cami�o tem espa�o suficiente para recolher as paletes'
ELSE
	PRINT 'J� foste C�ndido'
