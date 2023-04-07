CREATE DATABASE db_alunos;
USE db_alunos;
CREATE TABLE tb_notasalunos(
id bigint auto_increment,
cpf varchar(255),
nome varchar(255),
datadenascimento date,
anocursado bigint,
nota decimal(4,2),
primary key(id)

);
INSERT INTO tb_notasalunos(cpf,nome,datadenascimento,anocursado,nota)
values ("100.000.000.01","franscisco","2000-08-01",7,9.0);
INSERT INTO tb_notasalunos(cpf,nome,datadenascimento,anocursado,nota)
values ("200.000.000.01","José","2001-05-01",7,9.5);
INSERT INTO tb_notasalunos(cpf,nome,datadenascimento,anocursado,nota)
values ("300.000.000.01","Pedro","2000-08-12",7,8.0);
INSERT INTO tb_notasalunos(cpf,nome,datadenascimento,anocursado,nota)
values ("400.000.000.01","Matheus","2000-08-13",7,8.5);
INSERT INTO tb_notasalunos(cpf,nome,datadenascimento,anocursado,nota)
values ("500.000.000.01","João","2000-08-23",7,6.5);
INSERT INTO tb_notasalunos(cpf,nome,datadenascimento,anocursado,nota)
values ("600.000.000.01","franscisco","2002-07-07",7,8.0);
INSERT INTO tb_notasalunos(cpf,nome,datadenascimento,anocursado,nota)
values ("700.000.000.01","Zacarias","2000-03-06",7,7.5);
INSERT INTO tb_notasalunos(cpf,nome,datadenascimento,anocursado,nota)
values ("800.000.000.01","Abrão","2000-08-01",7,9.0);
INSERT INTO tb_notasalunos(cpf,nome,datadenascimento,anocursado,nota)
values ("900.000.000.01","Lucas","2001-08-12",7,9.0);
INSERT INTO tb_notasalunos(cpf,nome,datadenascimento,anocursado,nota)
values ("110.000.000.01","Davi","2000-07-04",7,10.0);
INSERT INTO tb_notasalunos(cpf,nome,datadenascimento,anocursado,nota)
values ("120.000.000.01","Paulo","2000-09-11",7,8.0);
SELECT *FROM  tb_notasalunos;
SElECT *FROM tb_notasalunos where nota > 7.0; 
SElECT *FROM tb_notasalunos where nota < 7.0; 
update tb_notasalunos set nota = 7.5 where id =2;
update tb_notasalunos set nome = "Joaquim" where id =2;