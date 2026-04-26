-- 1. Listar todos os livros disponíveis

SELECT * 
FROM livro 
WHERE DISPONIVEL = 1;

-- 2. Listar usuários e os livros que pegaram emprestado
SELECT 
    u.NOME AS USUARIO,
    l.TITULO AS LIVRO,
    e.DATA_EMPRESTIMO,
    e.DATA_DEVOLUCAO
FROM emprestimo e
JOIN usuario u ON e.ID_USUARIO = u.ID_USUARIO
JOIN livro l ON e.ID_LIVRO = l.ID_LIVRO;

-- 3. Quantidade de livros por categoria
SELECT 
    CATEGORIA,
    COUNT(*) AS TOTAL
FROM livro
GROUP BY CATEGORIA;

-- 4. Livros que estão emprestados (não disponíveis)
SELECT * 
FROM livro
WHERE DISPONIVEL = 0;

-- 5. Usuários com mais empréstimos
SELECT 
    u.NOME,
    COUNT(e.ID_USUARIO) AS TOTAL_EMPRESTIMOS
FROM usuario u
JOIN emprestimo e ON u.ID_USUARIO = e.ID_USUARIO
GROUP BY u.NOME
ORDER BY TOTAL_EMPRESTIMOS DESC;

-- 6. Livros mais emprestados
SELECT 
    l.TITULO,
    COUNT(e.ID_LIVRO) AS TOTAL
FROM livro l
JOIN emprestimo e ON l.ID_LIVRO = e.ID_LIVRO
GROUP BY l.TITULO
ORDER BY TOTAL DESC;