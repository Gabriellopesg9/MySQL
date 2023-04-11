CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT auto_increment,
borda VARCHAR(255),
tipo VARCHAR(255),
PRIMARY KEY(id)
);
CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
Sabor VARCHAR(255),
Preco decimal(6,2),
Tamanho VARCHAR(255),
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
INSERT INTO   tb_categorias( borda,tipo )
VALUES ("Catupiry","Salgada"),
       ("Chocolate","Salgada"),
       ("Catupiry","Doce"),
       ("Chocolate","Doce"),
       ("Sem Borda", "Salgada" );
SELECT*FROM tb_categorias;
 INSERT INTO tb_pizzas(Sabor,Preco,Tamanho,categoria_id)
 VALUE                ("Frango com Catupiry",50.00,"Média",1),
					  ("Clabresa",55.00,"Média",2),
                      ("Três Queijos",40.00,"Média",5),
                      ("Chocolate",40.00,"Pequena",3),
                      ("Mexicana",40.00,"Média",1),
                      ("Frango com Catupiry",65.00,"Grande",2),
                      ("Clabresa",40.00,"Média",5),
                      ("Carne Seca",60.00,"Média",2),
                      ("Mexicana",55.00,"Grande",2),
                      ("Carne Seca",70.00,"Grande",2);
SELECT*FROM tb_pizzas;
SELECT*FROM tb_pizzas WHERE preco > 45.00 ;
SELECT*FROM tb_pizzas WHERE preco BETWEEN  50.00 AND  100;
DELETE FROM tb_pizzas WHERE id IN(12,13,14,15,16,17,18,19);
SELECT*FROM tb_pizzas WHERE Sabor Like "%M%";
SELECT*FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_categorias.id = tb_pizzas.Categoria_id;
SELECT tb_categorias.tipo  From tb_categorias  INNER JOIN tb_pizzas ON tb_categorias.id = tb_pizzas.categoria_id;
