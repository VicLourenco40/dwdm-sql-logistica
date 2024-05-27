-- A condutora Marta Marques está doente no dia 2024-01-12.
-- Encontrar um condutor que esteja livre (sem rotas planeadas para esse dia) e que
-- trabalhe no mesmo armazém para a substituir.

SELECT *
FROM trabalhadores
WHERE id_trabalhador NOT IN (
	SELECT DISTINCT id_condutor
	FROM rotas r
	JOIN pedidos p ON r.id_rota = p.id_rota
	WHERE p.data_entrega = '2024-01-12'
) AND id_funcao = (
	SELECT id_funcao
	FROM funcoes
	WHERE nome LIKE 'Condutor'
) AND id_armazem = (
	SELECT id_armazem
	FROM trabalhadores
	WHERE nome LIKE 'Marta Marques'
);
