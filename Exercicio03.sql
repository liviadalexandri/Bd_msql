CREATE DATABASE db_exercicio03;
USE db_exercicio03;

CREATE TABLE tb_estudantes (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    turma VARCHAR(10),
    nota_final DECIMAL(4,2),
    status VARCHAR(20)
);

-- Inserção dos registros
INSERT INTO tb_estudantes (id, nome, data_nascimento, turma, nota_final, status) VALUES
(1, 'Ana Beatriz', '2007-04-15', '8A', 8.5, 'Aprovado'),
(2, 'Bruno Ferreira', '2006-10-03', '9B', 6.9, 'Em Recuperação'),
(3, 'Carlos Pinto', '2007-02-11', '8A', 7.2, 'Aprovado'),
(4, 'Daniela Lopes', '2006-08-25', '9A', 5.5, 'Reprovado'),
(5, 'Eduardo Santos', '2005-12-17', '9B', 9.0, 'Aprovado'),
(6, 'Fernanda Costa', '2007-01-08', '8A', 6.5, 'Em Recuperação'),
(7, 'Gabriel Rocha', '2006-11-30', '9A', 7.8, 'Aprovado'),
(8, 'Helena Martins', '2007-03-19', '8B', 4.3, 'Reprovado');

SELECT * FROM tb_estudantes;

-- Estudantes com nota maior que 7.0
SELECT * FROM tb_estudantes WHERE nota_final > 7.0;

-- Estudantes com nota menor que 7.0
SELECT * FROM tb_estudantes WHERE nota_final < 7.0;

-- Atualização da nota e status do aluno
UPDATE tb_estudantes
SET nota_final = 7.1,
    status = 'Aprovado'
WHERE id = 2;