-- A empresa Nutrição Completa, que recebe um pedido no dia 2024-01-12,
-- necessita uma recolha urgente de 10 paletes no mesmo dia.
-- Verificar se o camião de entrega dessa rota tem espaço suficiente para
-- transportar as paletes de volta para o armazém.

DECLARE @id_destinatario INT;
DECLARE @id_rota INT;
DECLARE @max_paletes INT;
DECLARE @num_paletes_rota INT;
DECLARE @num_paletes_pedido INT;

SET @id_destinatario = (
	SELECT id_cliente
	FROM clientes
	WHERE nome LIKE 'Nutrição Completa'
)

SET @id_rota = (
	SELECT r.id_rota
	FROM rotas r
	JOIN pedidos p ON p.id_rota = r.id_rota
	WHERE p.id_destinatario = @id_destinatario
	AND r.id_proposito = (
		SELECT id_proposito
		FROM propositos
		WHERE descricao LIKE 'Entrega'
	) AND p.data_entrega = '2024-01-12'
)

SET @max_paletes = (
	SELECT max_paletes
	FROM camioes
	WHERE id_camiao = (
		SELECT id_camiao
		FROM rotas
		WHERE id_rota = @id_rota
	)
)

SET @num_paletes_rota = (
	SELECT COUNT(*)
	FROM paletes
	WHERE id_pedido IN (
		SELECT id_pedido
		FROM pedidos
		WHERE id_rota = @id_rota
	)
)

SET @num_paletes_pedido = (
	SELECT COUNT(*)
	FROM paletes
	WHERE id_pedido IN (
		SELECT id_pedido
		FROM pedidos
		WHERE id_rota = @id_rota
		AND id_destinatario = @id_destinatario
	)
)

IF @max_paletes - @num_paletes_rota + @num_paletes_pedido - 10 >= 0
	PRINT 'O camião tem espaço suficiente para recolher as paletes'
ELSE
	PRINT 'O camião não tem espaço suficiente para recolher as paletes';
