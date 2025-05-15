CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2),
    estoque INT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

-- Inserir registros na tabela de categorias
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Medicamentos', 'Remédios e fármacos controlados ou não'),
('Higiene', 'Produtos de cuidado e limpeza pessoal'),
('Cosméticos', 'Produtos de beleza e estética'),
('Vitaminas', 'Suplementos vitamínicos e minerais'),
('Infantil', 'Produtos voltados para cuidados infantis');

SELECT * FROM tb_categorias;

-- Inserir registros na tabela de produtos
INSERT INTO tb_produtos (nome_produto, descricao, preco, estoque, id_categoria) VALUES
('Paracetamol 750mg', 'Analgésico e antitérmico', 12.90, 150, 1),
('Sabonete Líquido', 'Sabonete para pele sensível', 18.50, 100, 2),
('Creme Hidratante Facial', 'Hidratação para o rosto', 55.00, 80, 3),
('Vitamina C 500mg', 'Suplemento de vitamina C', 35.00, 200, 4),
('Shampoo Infantil', 'Shampoo suave para bebés', 22.90, 50, 5),
('Filtro Solar FPS 50', 'Protetor solar para o rosto', 65.00, 60, 3),
('Vitamina D3 2000UI', 'Suplemento de vitamina D', 48.00, 75, 4),
('Creme Dental Clareador', 'Pasta de dentes com efeito branqueador', 9.90, 120, 2);

SELECT * FROM tb_produtos;

-- Produtos com valor > R$ 50,00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- Produtos com valor entre R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- Produtos com a letra 'C' no nome
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

-- INNER JOIN: Produtos + Categorias
SELECT p.id_produto, p.nome_produto, p.preco, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

-- INNER JOIN: Produtos da categoria 'Cosméticos'
SELECT p.id_produto, p.nome_produto, p.preco, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Cosméticos';