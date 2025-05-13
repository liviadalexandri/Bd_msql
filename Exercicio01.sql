CREATE DATABASE db_exercicio01;
USE db_exercicio01;

CREATE TABLE tb_colaboradores (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    departamento VARCHAR(50),
    salario DECIMAL(10,2),
    data_admissao DATE
);

-- Inserção dos registros
INSERT INTO tb_colaboradores (id, nome, cargo, departamento, salario, data_admissao) VALUES
(1, 'Rafaela Silva', 'Analista de RH', 'Recursos Humanos', 1500.00, '2022-03-15'),
(2, 'Marina Solinski', 'Desenvolvedor', 'Tecnologia', 70000.00, '2021-07-01'),
(3, 'Carla Mendes', 'Gerente de Projetos', 'Operações', 1900.00, '2020-11-20'),
(4, 'Diego Rocha', 'Assistente Administrativo', 'Financeiro', 1700.00, '2023-01-10'),
(5, 'Gabriela Cunha', 'Coordenadora de Marketing', 'Marketing', 2900.00, '2019-05-05');

-- Visualiza todos os dados da tabela tb_produtos
SELECT * FROM tb_colaboradores;

-- Colaboradores com salário superior a 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- Colaboradores com salário inferior a 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- Atualização do salario de um colaborador
UPDATE tb_colaboradores
SET salario = 2100.00
WHERE id = 2;
