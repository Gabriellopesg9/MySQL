CREATE DATABASE db_colaboradores;
USE db_colaboradores;
CREATE TABLE tb_colaboradores(
id bigint auto_increment,
cpf varchar(255),
nome varchar(255),
telefone varchar(255),
email varchar(255),
salario decimal,
primary key(id)



);
SELECT * FROM tb_colaboradores ;
INSERT INTO tb_colaboradores(cpf,nome,telefone,email,salario)
values ("100.000.00","Antonio","86 9090120","antonio@email.com",1890.00 );
INSERT INTO tb_colaboradores(cpf,nome,telefone,email,salario) 
values ("200.000.00","Antonia","86 9090130","antonia@email.com",2000.00 );
INSERT INTO tb_colaboradores(cpf,nome,telefone,email,salario)
values ("300.000.00","Augusto","86 9090140","augusto@email.com",3000.00 );
INSERT INTO tb_colaboradores(cpf,nome,telefone,email,salario)
values ("400.000.00","Franscisca","86 9090150","franscisca@email.com",12000.00 );
INSERT INTO tb_colaboradores(cpf,nome,telefone,email,salario)
values ("500.000.00","Thyelle","86 9090160","thyelle@email.com",18000.00 );
SELECT*FROM tb_colaboradores WHERE salario > 2000 ;
SELECT*FROM tb_colaboradores WHERE salario < 2000 ;
UPDATE tb_colaboradores SET salario = 20000.00 WHERE id = 5;