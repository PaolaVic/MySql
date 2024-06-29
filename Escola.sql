CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(250) NOT NULL,
    idade DECIMAL (10,2),
    nota DECIMAL (10,2),
    sala VARCHAR(50),
    turno VARCHAR(50),
    
    PRIMARY KEY (id)
);

INSERT INTO tb_estudantes (nome, idade, nota, sala, turno)
VALUES
("Seu Eustáquio", 18, 2.3, "3°B", "Noite"),
("Manuela D’Além Mar", 20, 7.2, "2°A", "Dia"),
("Aldemar Vigário", 19, 8.5, "3°F", "Noite"),
("Armando Volta", 21, 10, "3°A", "Noite"),
("Marina da Glória", 18, 6.3,"3°B", "Noite"),
("Zé Bonitinho", 20, 10, "3°B", "Noite"),
("Tati", 18, 6.0, "3°B", "Dia"),
("Batista", 22, 8.0, "3°G", "Dia");

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 7.8 WHERE id_estudante = 6;

SELECT * FROM tb_estudantes;
