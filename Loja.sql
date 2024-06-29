CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
	nome VARCHAR(500),
	preco DECIMAL(10,2),
    descricao VARCHAR(1000),
	estoque VARCHAR(255),
    categoria VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, preco, descricao, estoque, categoria)
VALUES 
("JUNKER QUEEN", 250.00, "A figura de vinil tem aproximadamente 12 centímetros", 32, "Funko Pop"),
("LEBRON JAMES - LAKERS", 150.00, "Este colecionável de LeBron James de 12 centímetros de altura o mostra vestido com seu uniforme amarelo do Los Angeles Lakers.", 3, "Vinil Gold"),
("FIVE NIGHTS AT FREDDY'S 4-PACK SÉRIE 3", 200.00, "Este pacote de 4 inclui Bitty Pop! Freddy, Bitty Pop! Bonnie, Bitty Pop! Balloon Boy e um misterioso Bitty Pop! cada um com 2 centímetros.", 13, "Bitty Pop"),
("MEGALOKI", 550.00, "A figura de vinil tem aproximadamente 50 centímetros.", 23, "Funko Pop"),
("MEGA DARTH VADER", 510.00, "A figura de vinil tem aproximadamente 50 centímetros.", 12, "Funko Pop"),
("GUARDIÕES DA GALÁXIA VOL. 3 PACOTE DE 6", 650.00, "A figura de vinil tem aproximadamente 5 centímetros.", 15, "Funko Pop"),
("SHREK", 100.00, "A figura de vinil tem aproximadamente 10 centímetros.", 5, "Vinil Soda"),
("PERNALONGA", 70.00, "A figura de vinil tem aproximadamente 5 centímetros.", 32, "Popsies"),
("CONJUNTO DE 4 PINS DO BLACKPINK SHUT DOWN", 100.00, "Cada broche de esmalte tem aproximadamente 1,5 polegadas.", 32, "Pins"),
("CAMISETA ABRACADABRA 2", 60.00, "Camiseta preta, em tamanhos unissex adultos: P-GG, 100% algodão.", 110, "Vestuário");

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

SELECT * FROM tb_produtos ORDER BY nome ASC;