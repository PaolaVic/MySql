CREATE DATABASE db_quitanda;
/* COMENTARIO */
USE db_quitanda;

CREATE TABLE tb_produtos (
id BIGINT auto_increment,
nome varchar(255) not null,
quantidade int,
datavalidade date,
preco decimal(6,2) not null,
primary key (id)
);

select * from tb_produtos;
/*o id se auto incrementa*/
INSERT INTO tb_produtos (nome,quantidade,datavalidade,preco)
VALUES ("Laranja",50,"2024-12-15",5.00),
("Limão",145,"2025,01,01",3.00),
("Banana",150,"2024-10-13",12.00),
("Amora",153,"2025-01-13",18.00),
("Pitaya",130,"2025-02-13",10.00),
("Morango",10,"2024-11-13",1.00);