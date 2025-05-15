CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao TEXT
);

CREATE TABLE tb_cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    descricao TEXT,
    carga_horaria INT,
    preco DECIMAL(10,2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

-- Inserir registros na tabela de categorias
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Programação', 'Cursos voltados para desenvolvimento de software'),
('Design Gráfico', 'Cursos de criação visual e ferramentas de design'),
('Marketing Digital', 'Cursos sobre estratégias e ferramentas digitais'),
('Idiomas', 'Cursos de línguas estrangeiras'),
('Negócios', 'Cursos voltados para o mundo corporativo e empreendedorismo');

SELECT * FROM tb_categorias;

-- Inserir registros na tabela de cursos
INSERT INTO tb_cursos (nome_curso, descricao, carga_horaria, preco, id_categoria) VALUES
('Java para Iniciantes', 'Curso básico de programação em Java', 40, 650.00, 1),
('Photoshop Essencial', 'Design gráfico com Adobe Photoshop', 30, 480.00, 2),
('Inglês Intermediário', 'Curso de inglês com foco na conversação', 50, 750.00, 4),
('Marketing no Instagram', 'Como promover seu negócio no Instagram', 25, 420.00, 3),
('Negócios Digitais', 'Transforme sua ideia em um negócio online', 60, 990.00, 5),
('Java Avançado', 'Conceitos avançados da linguagem Java', 60, 1200.00, 1),
('Illustrator Completo', 'Curso completo de Adobe Illustrator', 35, 520.00, 2),
('Francês Básico', 'Curso introdutório ao idioma francês', 45, 630.00, 4);

SELECT * FROM tb_cursos;

-- Cursos com valor > R$ 500,00
SELECT * FROM tb_cursos WHERE preco > 500.00;

-- Cursos com valor entre R$ 600,00 e R$ 1000,00
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

-- Cursos com a letra 'J' no nome
SELECT * FROM tb_cursos WHERE nome_curso LIKE '%J%';

-- INNER JOIN: Cursos + Categorias
SELECT c.id_curso, c.nome_curso, c.preco, cat.nome_categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id_categoria;

-- INNER JOIN: Cursos da categoria Java 
SELECT c.id_curso, c.nome_curso, c.preco, cat.nome_categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id_categoria
WHERE cat.nome_categoria = 'Programação';