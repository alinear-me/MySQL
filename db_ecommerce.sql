-- EXERCÍCIO 02: ECOMMERCE
CREATE DATABASE db_ecommerce;
USE db_ecommerce;
CREATE TABLE tb_produtos(
id_produto BIGINT(5) AUTO_INCREMENT,
tipo VARCHAR(100),
nome VARCHAR(255),
marca VARCHAR(255),
preco DECIMAL(10.2),
qnt_estoque BIGINT(5),
PRIMARY KEY(id_produto)
);

SELECT * FROM tb_produtos; 

INSERT INTO tb_produtos(tipo, nome, marca, preco, qnt_estoque) values ("eletrônicos","Fones de Ouvido","JBL",200.50,200);  
INSERT INTO tb_produtos(tipo, nome, marca, preco, qnt_estoque) values ("eletrônicos","Televisões","SAMSUNG",5000,30);
INSERT INTO tb_produtos(tipo, nome, marca, preco, qnt_estoque) values ("roupas","Camisetas","LACOSTE",200.50,200);
INSERT INTO tb_produtos(tipo, nome, marca, preco, qnt_estoque) values ("roupas esportivas","Bermuda/Short, Camiseta","ADIDAS",150.50,300);
INSERT INTO tb_produtos(tipo, nome, marca, preco, qnt_estoque) values ("livros","Educacionais","DIVERSAS",50.50,700);
INSERT INTO tb_produtos(tipo, nome, marca, preco, qnt_estoque) values ("papelaria","Cadernos","TILIBRA",23.50,100);
INSERT INTO tb_produtos(tipo, nome, marca, preco, qnt_estoque) values ("papelaria","Lápis de cor","FABER-CASTELL",25.00,300);
INSERT INTO tb_produtos(tipo, nome, marca, preco, qnt_estoque) values ("eletro-domésticos","diversos","BRASTEMP, ELETROLUX",5000,30);

SELECT * FROM tb_produtos WHERE preco > 500; 

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET qnt_estoque = 150 WHERE id_produto = 1;
-- 1175 erro de update
