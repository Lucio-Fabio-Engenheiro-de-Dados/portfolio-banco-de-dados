-- Inserindo categorias
INSERT INTO categoria (NOME, TIPO) VALUES
('Salário', 'Receita'),
('Freelance', 'Receita'),
('Investimentos', 'Receita'),
('Vendas', 'Receita'),
('Aluguel Recebido', 'Receita'),
('Alimentação', 'Despesa'),
('Transporte', 'Despesa'),
('Saúde', 'Despesa'),
('Educação', 'Despesa'),
('Lazer', 'Despesa'),
('Contas Fixas', 'Despesa'),
('Compras', 'Despesa');

-- Inserindo lançamentos
INSERT INTO lancamento (ID_CATEGORIA, DESCRICAO, VALOR, DATA_LANCAMENTO) VALUES
(1, 'Salário mensal', 5000.00, '2026-04-01'),
(2, 'Freelance site', 1200.00, '2026-04-05'),
(3, 'Rendimento investimentos', 300.00, '2026-04-10'),
(4, 'Venda de produto', 800.00, '2026-04-12'),
(5, 'Aluguel recebido', 1500.00, '2026-04-03'),
(6, 'Supermercado', 450.75, '2026-04-02'),
(7, 'Uber', 60.00, '2026-04-06'),
(8, 'Consulta médica', 200.00, '2026-04-07'),
(9, 'Curso online', 300.00, '2026-04-08'),
(10, 'Cinema', 80.00, '2026-04-09'),
(11, 'Conta de luz', 220.00, '2026-04-11'),
(12, 'Compra de roupas', 350.00, '2026-04-13'),
(6, 'Restaurante', 120.50, '2026-04-14'),
(7, 'Combustível', 180.00, '2026-04-15'),
(10, 'Viagem', 900.00, '2026-04-16');   