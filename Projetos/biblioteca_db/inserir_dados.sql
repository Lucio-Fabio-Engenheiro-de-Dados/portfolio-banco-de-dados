-- Inserindo usuario
INSERT INTO usuario (NOME, EMAIL) VALUES
('Carla Adriana', 'carla1@email.com'),
('Beatriz Lima', 'bealima@email.com'),
('João Silva', 'joao.silva@email.com'),
('Maria Souza', 'maria.souza@email.com'),
('Pedro Santos', 'pedro.santos@email.com'),
('Ana Costa', 'ana.costa@email.com'),
('Lucas Oliveira', 'lucas.oliveira@email.com'),
('Fernanda Alves', 'fernanda.alves@email.com'),
('Rafael Gomes', 'rafael.gomes@email.com'),
('Juliana Rocha', 'juliana.rocha@email.com');

-- Inserindo livro
INSERT INTO livro (TITULO, AUTOR, CATEGORIA) VALUES
('Dom Casmurro', 'Machado de Assis', 'Romance'),
('O Cortiço', 'Aluísio Azevedo', 'Romance'),
('Capitães da Areia', 'Jorge Amado', 'Drama'),
('A Hora da Estrela', 'Clarice Lispector', 'Romance'),
('Memórias Póstumas de Brás Cubas', 'Machado de Assis', 'Romance'),
('Vidas Secas', 'Graciliano Ramos', 'Drama'),
('Iracema', 'José de Alencar', 'Romance'),
('O Alienista', 'Machado de Assis', 'Ficção'),
('Senhora', 'José de Alencar', 'Romance'),
('Macunaíma', 'Mário de Andrade', 'Modernismo');

-- Inserindo emprestimo
INSERT INTO emprestimo (ID_USUARIO, ID_LIVRO, DATA_DEVOLUCAO) VALUES
(1, 3, '2026-05-01'),
(2, 1, '2026-05-03'),
(3, 5, '2026-05-05'),
(4, 2, '2026-05-07'),
(5, 4, '2026-05-10'),
(6, 6, '2026-05-12'),
(7, 7, '2026-05-15'),
(8, 8, '2026-05-18'),
(9, 9, '2026-05-20'),
(10, 10, '2026-05-25');
