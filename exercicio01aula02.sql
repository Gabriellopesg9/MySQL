CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;
CREATE TABLE tb_categorias(
id BIGINT auto_increment,
Categoria VARCHAR(255),
Clã VARCHAR(255),
primary key(id)
);
SELECT * FROM tb_classes;
CREATE TABLE tb_personagens(
  id BIGINT AUTO_INCREMENT,
  Nome varchar(255),
  Poder_de_Ataque BIGINT,
  Poder_de_Defesa BIGINT,
  Interligência BIGINT,
  Categoria_id BIGINT,
  PRIMARY KEY(id),
  FOREIGN KEY (Categoria_id) REFERENCES tb_classes(id)
  );
  RENAME TABLE tb_categorias TO tb_classes;
  SELECT*FROM tb_personagens;
  INSERT INTO tb_classes(Categoria,Clã)
  VALUES ("Mercenário", "Tigre"),
         ("Mago","Coruja"),
         ("Especialista","Serpente"),
         ("Bruxo","Corvo"),
         ("Espião","Camaleão");
  INSERT INTO tb_personagens(Nome, Poder_de_Ataque ,Poder_de_Defesa ,Interligência,Categoria_id)
  VALUES ("MORTSU", 6000 ,2000 ,3200,1),
         ("CHIZAME", 4000 ,3000 ,4000,4),
         ("CARUTO", 6000 ,5500 ,6500,2),
         ("HIPO", 5000 ,1800 ,5000,5),
         ("CARMATA", 7000 ,4000 ,6500,3),
         ("SEVERO", 6500,6500 ,5000,3),
         ("MAPETI", 4000 ,5000 ,2000,4);
  
DELETE FROM tb_personagens WHERE id = 1 or id = 2 or id = 3 or id= 4 or id =5 ;
DELETE FROM tb_personagens WHERE id = 14 or id = 15 or id = 16 or id= 17 or id =18 or id = 19 or id =20 ;
SELECT*FROM tb_personagens WHERE Poder_de_Defesa in ( 1000,2000);
SELECT*FROM tb_personagens WHERE NOME LIKE "%C%" ; 
SELECT*FROM tb_personagens INNER JOIN tb_classes 
ON tb_classes.id = tb_personagens.Categoria_id;
SELECT  Nome,tb_classes.Mercenário FROM tb_classes INNER JOIN tb_personagens
ON tb_classes.id = tb_personagens.categoria_id;