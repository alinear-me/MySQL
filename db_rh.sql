-- EXERCÍCIO 01: RH DE EMPRESA 
CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_funcionaries(
id_funcionaries BIGINT(5) AUTO_INCREMENT,
nome VARCHAR(100),
cargo VARCHAR(100),
salario INT,
tempo_empresa VARCHAR(100),
PRIMARY KEY(id_funcionaries)
);

SELECT * FROM tb_funcionaries;

INSERT INTO tb_funcionaries(nome, cargo, salario, tempo_empresa) values ("Arthur Jesus","Jornalista Sênio",8000,"5 anos");
INSERT INTO tb_funcionaries(nome, cargo, salario, tempo_empresa) values ("Ellie Santos","Editora Chef Sênio",10000,"6 anos");
INSERT INTO tb_funcionaries(nome, cargo, salario, tempo_empresa) values ("Josiane Santos","Publicitária Pleno",9000,"4 anos");
INSERT INTO tb_funcionaries(nome, cargo, salario, tempo_empresa) values ("Gabriela Amaral","Engenheira de Sistemas Jr.",5000,"2 anos");
INSERT INTO tb_funcionaries(nome, cargo, salario, tempo_empresa) values ("Matheus Henrique","Desenvolvedor Full Stack Jr.",6000,"2 anos");
INSERT INTO tb_funcionaries(nome, cargo, salario, tempo_empresa) values ("Fernanda Silva","Estagiária de Publicidade",1700,"8 meses");
INSERT INTO tb_funcionaries(nome, cargo, salario, tempo_empresa) values ("Robert Jesus","Jovem Aprendiz, Auxiliar de Adm.",1045,"5 meses");
-- erro 1054 = escreveu o nome de um atrivuto e esqueceu uma letra

SELECT * FROM tb_funcionaries WHERE salario > 2000;

SELECT * FROM tb_funcionaries WHERE salario < 2000;

UPDATE tb_funcionaries SET tempo_empresa = "2 anos" WHERE id_funcionaries = 5;