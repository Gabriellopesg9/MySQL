CREATE DATABASE db_produtos ;
USE db_produtos;
CREATE TABLE tb_bebidas(
id bigint auto_increment,
nome varchar(255),
preco decimal(4,2),
quantidade bigint,
alcool varchar(255),
validade varchar(255),
primary key(id)


);
SELECT*FROM tb_bebidas;
INSERT INTO tb_bebidas(nome,preco,quantidade,alcool,validade)
values ("itaipava",7.0,5,"sim","Sem");
INSERT INTO tb_bebidas(nome,preco,quantidade,alcool,validade)
values ("Bhrama",7.0,5,"sim","Sem");
INSERT INTO tb_bebidas(nome,preco,quantidade,alcool,validade)
values ("Estella",7.0,5,"sim","Sem");
INSERT INTO tb_bebidas(nome,preco,quantidade,alcool,validade)
values ("heineken ",7.0,5,"sim","Sem");
INSERT INTO tb_bebidas(nome,preco,quantidade,alcool,validade)
values ("Skol",8.0,10,"sim","Sem");
INSERT INTO tb_bebidas(nome,preco,quantidade,alcool,validade)
values ("Original",9.0,5,"sim","Sem");
INSERT INTO tb_bebidas(nome,preco,quantidade,alcool,validade)
values ("vodka",7.0,5,"sim","Sem");
INSERT INTO tb_bebidas(nome,preco,quantidade,alcool,validade)
values ("wisk_importado",5.0,5,"sim","Sem");
INSERT INTO tb_bebidas(nome,preco,quantidade,alcool,validade)
values ("old_par",60.0,5,"sim","Sem");
ALTER TABLE tb_bebidas MODIFY preco decimal(6,2);
UPDATE tb_bebidas SET preco = 600.00 WHERE id = 7;
UPDATE tb_bebidas SET preco = 700.00 WHERE id = 8;
UPDATE tb_bebidas SET preco = 700.00 WHERE id = 9;
SELECT* FROM tb_bebidas WHERE preco > 500 ;
SELECT* FROM tb_bebidas WHERE preco < 500 ;
ALTER TABLE tb_bebidas CHANGE nome nomedabebida varchar(255) ;