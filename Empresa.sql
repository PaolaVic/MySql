CREATE DATABASE db_empresa
USE db_empresa;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255),
	cargo VARCHAR(255),
    salario DECIMAL(8,2),
	turno VARCHAR(255),
    data_ingressao DATE,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores (nome, cargo, salario, turno, data_ingressao)
VALUES ("Carlos Nascimento", "Diretor", 31000.00, "Dia", "2013-02-25"),
("Yurik Graciano", "Desenvolvedor", 8000.00, "Noite", "2020-07-20"),
("Sara Silva", "Desenvolvedor", 8000.00, "Dia", "2020-02-03"),
("Gerson Conceição", "Secretária", 3500.00, "Dia", "2024-06-06"),
("Lucas de Paula", "Estagiário", 1430.00, "Dia", "2024-02-24"),
("Lilian Santos", "Estagiária", 1430.00, "Noite", "2022-03-02");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 1550.00 WHERE id = 6;

