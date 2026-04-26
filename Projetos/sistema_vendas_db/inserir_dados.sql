-- Inserindo clientes
INSERT INTO cliente (NOME, EMAIL, TELEFONE) VALUES
('João Almeida', 'joaoAlmeida@email.com', '11999999999'),
('Ana Beatriz', 'ABea@email.com', '11888888888');

-- Inserindo produtos
INSERT INTO produto (NOME, PRECO, ESTOQUE) VALUES
('Notebook', 3500.00, 10),
('Smartphone', 2500.00, 20);

-- Inserindo pedidos
INSERT INTO pedido (ID_CLIENTE, TOTAL) VALUES
(1, 3500.00),
(2, 2500.00);