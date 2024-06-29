CREATE DATABASE db_pizzaria_NewYork;
USE db_pizzaria_NewYork;

CREATE TABLE tb_categorias (
    id_categoria BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    PRIMARY KEY (id_categoria)
);
INSERT INTO tb_categorias (nome, descricao)
VALUES
("Salgadas", "Pizzas salgadas"),
("Doces", "Pizzas doces"),
("Esfiha", "Esfihas salgadas e doces");

CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(250) NOT NULL,
    preco DECIMAL(10, 2),
    descricao VARCHAR(250),
    id_categoria BIGINT, -- Ajuste para o mesmo tipo de dado que em tb_categorias
    FOREIGN KEY (id_categoria) 
    REFERENCES tb_categorias(id_categoria)
);
INSERT INTO tb_pizzas (nome, preco, descricao, id_categoria)
VALUES
("Bronx", 45.00, "Mussarela, shimeji e cebolinha.", 1),
("Brooklyn", 60.00, "Calabresa, cebola roxa, cream cheese e azeitona preta.", 1),
("Manhattan", 550.00, "Lagosta cozida em champanhe, além de um toque especial de pó de ouro.", 1),
("Queens", 60.00, "Banana, açúcar, canela e chocolate.", 2),
("Staten Island", 480.00, "Esfiha de tomate seco colhido do Himalaias e feito na casa, provolone, catupiry, tomate sweet grape e parmesão.", 3),
("New York", 3000.00, "Carne Kobe, folhas de ouro comestível, borda de caviar beluga, trufas negras e molho de trufas brancas.", 1),
("Times Square", 500.00, "Banana com canela e chocolate branco de altíssima qualidade da empresa Valrhona Ivoire 35% gratinado.", 2),
("Central Park", 800.00, "Aspargos finos, carne de soja temperada com ervas finas, alcachofras.", 1);

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT p.nome AS pizza, p.preco, c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT p.nome AS pizza, p.preco, c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome = 'Doces';