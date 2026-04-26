-- 1. Listar lançamentos com suas categorias
SELECT 
    l.DESCRICAO, 
    c.NOME AS CATEGORIA, 
    c.TIPO, 
    l.VALOR, 
    l.DATA_LANCAMENTO
FROM lancamento l
JOIN categoria c 
ON l.ID_CATEGORIA = c.ID_CATEGORIA;

-- 2. Total de receitas, despesas e saldo
SELECT 
    SUM(CASE 
        WHEN c.TIPO = 'Receita' THEN l.VALOR 
        ELSE 0 
    END) AS TOTAL_RECEITA,

    SUM(CASE 
        WHEN c.TIPO = 'Despesa' THEN l.VALOR 
        ELSE 0 
    END) AS TOTAL_DESPESA,

    SUM(CASE 
        WHEN c.TIPO = 'Receita' THEN l.VALOR 
        ELSE -l.VALOR 
    END) AS SALDO

FROM lancamento l
JOIN categoria c 
ON l.ID_CATEGORIA = c.ID_CATEGORIA;

-- 3. Total por categoria
SELECT 
    c.NOME AS CATEGORIA, 
    c.TIPO, 
    SUM(l.VALOR) AS TOTAL
FROM lancamento l
JOIN categoria c 
ON l.ID_CATEGORIA = c.ID_CATEGORIA
GROUP BY c.NOME, c.TIPO;

-- 4. Lançamentos por data
SELECT * 
FROM lancamento 
ORDER BY DATA_LANCAMENTO;

-- 5. Mostrar apenas despesas
SELECT 
    l.DESCRICAO, 
    l.VALOR, 
    c.NOME
FROM lancamento l
JOIN categoria c 
ON l.ID_CATEGORIA = c.ID_CATEGORIA
WHERE c.TIPO = 'Despesa';

-- 6. Mostrar apenas receitas
SELECT 
    l.DESCRICAO, 
    l.VALOR, 
    c.NOME
FROM lancamento l
JOIN categoria c 
ON l.ID_CATEGORIA = c.ID_CATEGORIA
WHERE c.TIPO = 'Receita';

-- 7. Lançamentos com valor maior que 500
SELECT * 
FROM lancamento
WHERE VALOR > 500;

-- 8. Buscar por palavra na descrição
SELECT * 
FROM lancamento
WHERE DESCRICAO LIKE '%Conta%';

-- 9. Contar quantos lançamentos existem
SELECT COUNT(*) AS TOTAL_LANCAMENTOS
FROM lancamento;

-- 10. Média dos valores
SELECT AVG(VALOR) AS MEDIA_VALORES
FROM lancamento;

-- 11. Maior e menor valor
SELECT 
    MAX(VALOR) AS MAIOR_VALOR,
    MIN(VALOR) AS MENOR_VALOR
FROM lancamento;

-- 12. Lançamentos entre datas
SELECT * 
FROM lancamento
WHERE DATA_LANCAMENTO 
BETWEEN '2026-04-01' AND '2026-04-10';

-- 13. Selecionar colunas específicas
SELECT NOME, TIPO FROM categoria;

-- 14. Filtrar dados (WHERE)
-- Apenas receitas
SELECT * FROM categoria
WHERE TIPO = 'Receita';

-- Lançamentos acima de 500
SELECT * FROM lancamento
WHERE VALOR > 500;

-- 15. Ordenar resultados (ORDER BY)
-- Do maior para o menor valor
SELECT * FROM lancamento
ORDER BY VALOR DESC;

-- Ordem alfabética
SELECT * FROM categoria
ORDER BY NOME ASC;

-- 16. Limitar resultados (LIMIT)
-- Mostrar apenas 5 registros
SELECT * FROM lancamento
LIMIT 5;

-- 17. Buscar com LIKE (pesquisa)
-- Buscar categorias que começam com 'A'
SELECT * FROM categoria
WHERE NOME LIKE 'A%';

-- Buscar descrição contendo "Conta"
SELECT * FROM lancamento
WHERE DESCRICAO LIKE '%Conta%';

-- 17. Mostrar lançamentos com nome da categoria
SELECT 
    l.DESCRICAO,
    l.VALOR,
    l.DATA_LANCAMENTO,
    c.NOME AS CATEGORIA,
    c.TIPO
FROM lancamento l
JOIN categoria c 
ON l.ID_CATEGORIA = c.ID_CATEGORIA;

-- 18. Somar todas as receitas e despesas 
SELECT SUM(l.VALOR) AS TOTAL_RECEITAS
FROM lancamento l
JOIN categoria c 
ON l.ID_CATEGORIA = c.ID_CATEGORIA
WHERE c.TIPO = 'Receita';

SELECT SUM(l.VALOR) AS TOTAL_DESPESAS
FROM lancamento l
JOIN categoria c 
ON l.ID_CATEGORIA = c.ID_CATEGORIA
WHERE c.TIPO = 'Despesa';

-- 19. Total por categoria (GROUP BY)
SELECT 
    c.NOME,
    SUM(l.VALOR) AS TOTAL
FROM lancamento l
JOIN categoria c 
ON l.ID_CATEGORIA = c.ID_CATEGORIA
GROUP BY c.NOME;

-- 20. Total por tipo (Receita vs Despesa)
SELECT 
    c.TIPO,
    SUM(l.VALOR) AS TOTAL
FROM lancamento l
JOIN categoria c 
ON l.ID_CATEGORIA = c.ID_CATEGORIA
GROUP BY c.TIPO;

-- 21. Lançamentos de um mês específico
SELECT *
FROM lancamento
WHERE MONTH(DATA_LANCAMENTO) = 4;

-- 22. Lançamentos entre datas
SELECT *
FROM lancamento
WHERE DATA_LANCAMENTO BETWEEN '2026-04-01' AND '2026-04-15';

-- 23. Saldo final (Receita - Despesa)
SELECT 
    SUM(CASE 
        WHEN c.TIPO = 'Receita' THEN l.VALOR
        ELSE -l.VALOR
    END) AS SALDO_FINAL
FROM lancamento l
JOIN categoria c 
ON l.ID_CATEGORIA = c.ID_CATEGORIA;

