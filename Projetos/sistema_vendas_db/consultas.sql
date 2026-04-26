-- 1) Listar todos os clientes
SELECT * FROM cliente;

-- 2) Listar todos os produtos
SELECT * FROM produto;

-- 3) Listar pedidos com o nome do cliente
SELECT p.ID_PEDIDO,
       c.NOME        AS CLIENTE,
       p.DATA_PEDIDO,
       p.TOTAL
FROM pedido p
JOIN cliente c ON p.ID_CLIENTE = c.ID_CLIENTE;

-- 4) (opcional) Total vendido por cliente
SELECT c.NOME AS CLIENTE, SUM(p.TOTAL) AS TOTAL_VENDIDO
FROM pedido p
JOIN cliente c ON p.ID_CLIENTE = c.ID_CLIENTE
GROUP BY c.NOME
ORDER BY TOTAL_VENDIDO DESC;