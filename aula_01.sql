CREATE DATABASE db_quitanda;
-- CRIA O BANCO DE DADOS
USE db_quitanda ;
CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) not null ,

preco decimal(6,2) not null,
primary key(id));

-- Visualizar a tabela 
SELECT*FROM tb_produtos ;
ALTER TABLE tb_produtos ADD quantidade int;
ALTER TABLE tb_produtos DROP quantidade; 
ALTER TABLE tb_produtos ADD preco decimal(6,2);

-- inserir produtos na tabela
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("tomate",100, 8.80);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("maçã",20, 5.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("laranja",50, 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("banana",200, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("uva",1200, 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("pêra",500, 2.99);
SELECT nome,preco FROM tb_produtos ;
SELECT * FROM tb_produtos WHERE id = 1;
SELECT * FROM tb_produtos WHERE preco > 5.0;
SELECT * FROM tb_produtos WHERE preco > 5.00 AND quantidade < 100;
UPDATE tb_produtos SET preco = 5.00 WHERE id = 1;
DELETE FROM tb_produtos WHERE id = 2;
ALTER TABLE tb_produtos CHANGE nome nomeproduto VARCHAR(255); 