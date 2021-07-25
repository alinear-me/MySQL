-- EXERCÍCIO 03: REGISTRO DE ESCOLA
CREATE DATABASE db_registro;
USE db_registro;
CREATE TABLE tb_estudante(
id_aluno INT AUTO_INCREMENT,
nome VARCHAR(255),
ano VARCHAR (30),
turno VARCHAR(15),
nota_semestre INT,
PRIMARY KEY (id_aluno)
);

SELECT * FROM tb_estudante;
-- inserindo dados
INSERT INTO tb_estudante (nome, ano, turno, nota_semestre) values ("Mariana Lima", "9º ANO","MANHA", 8);
INSERT INTO tb_estudante (nome, ano, turno, nota_semestre) values ("Fernando Souza Lima", "5º ANO","TARDE", 6);
INSERT INTO tb_estudante (nome, ano, turno, nota_semestre) values ("Fabiana Santos", "6º ANO","TARDE", 7);
INSERT INTO tb_estudante (nome, ano, turno, nota_semestre) values ("Maurício Pereira", "9º ANO","MANHA", 9);
INSERT INTO tb_estudante (nome, ano, turno, nota_semestre) values ("Patrícia Morais", "4º ANO","TARDE", 6);
INSERT INTO tb_estudante (nome, ano, turno, nota_semestre) values ("Rafael Lima", "2º ANO","TARDE", 9);
INSERT INTO tb_estudante (nome, ano, turno, nota_semestre) values ("Yasmin Lima", "5º ANO","MANHA", 8);
INSERT INTO tb_estudante (nome, ano, turno, nota_semestre) values ("Henrique Novais", "9º ANO","MANHA", 8);
INSERT INTO tb_estudante (nome, ano, turno, nota_semestre) values ("Fabíola Neves", "3º ANO","TARDE", 5);


SELECT * FROM tb_estudante WHERE nota_semestre > 7;
-- erro 1146
SELECT * FROM tb_estudante WHERE nota_semestre < 7;

UPDATE tb_estudante SET nota_semestre = 9 WHERE id_aluno = 5;




