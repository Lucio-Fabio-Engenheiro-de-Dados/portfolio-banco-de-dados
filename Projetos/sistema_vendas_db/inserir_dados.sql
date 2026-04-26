-- Inserindo clientes
INSERT INTO cliente (NOME, EMAIL, TELEFONE) VALUES
('João Almeida', 'joaoAlmeida@email.com', '11999999999'),
('Ana Beatriz', 'ABea@email.com', '11888888888'),
('Carlos Souza', 'carlos.souza@email.com', '11777777777'),
('Mariana Lima', 'mariana.lima@email.com', '11666666666'),
('Pedro Henrique', 'pedro.h@email.com', '11555555555'),
('Juliana Martins', 'juliana.m@email.com', '11444444444'),
('Rafael Costa', 'rafael.costa@email.com', '11333333333'),
('Fernanda Alves', 'fernanda.alves@email.com', '11222222222'),
('Lucas Pereira', 'lucas.p@email.com', '11111111111'),
('Patrícia Gomes', 'patricia.gomes@email.com', '11912345678');

-- Inserindo produtos
INSERT INTO produto (NOME, PRECO, ESTOQUE) VALUES
('Notebook', 3500.00, 10),
('Smartphone', 2500.00, 20),
('Tablet', 1800.00, 15),
('Monitor', 1200.00, 8),
('Teclado', 150.00, 50),
('Mouse', 80.00, 60);

-- Inserindo pedidos
INSERT INTO pedido (ID_CLIENTE, TOTAL) VALUES
(1, 3500.00),
(2, 2500.00),
(3, 1800.00),
(4, 1200.00),
(5, 150.00),
(6, 80.00),
(7, 3500.00),
(8, 2500.00),
(9, 1800.00),
(10, 1200.00);
