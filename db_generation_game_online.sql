-- atividade 01
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe(
id_usuario BIGINT PRIMARY KEY AUTO_INCREMENT,
modo VARCHAR(50), 
nivel VARCHAR(50), 
forma_combate VARCHAR(50) 
);
SELECT * FROM tb_classe;

CREATE TABLE tb_personagem(
id_personagem BIGINT PRIMARY KEY AUTO_INCREMENT,
divindade VARCHAR(50),
arma VARCHAR(50),
forca INT NOT NULL, 
defesa INT NOT NULL,
habilidade VARCHAR(50), 
id_usuario BIGINT
);
SELECT * FROM tb_personagem;

 ALTER TABLE tb_personagem
 ADD CONSTRAINT fk_userperson FOREIGN KEY (id_usuario) REFERENCES tb_classe (id_usuario);

-- erro 1064 (erro de sintaxe) e 1075 (definição incorreta de tabela)

-- populando tb_classe
INSERT INTO tb_classe(modo, nivel, forma_combate) values ("Battle Royale","Médio","1ª Pessoa");
INSERT INTO tb_classe(modo, nivel, forma_combate) values ("Multi-Player","Expert","1ª Pessoa");
INSERT INTO tb_classe(modo, nivel, forma_combate) values ("Battle Royale","Fácil","3ª Pessoa");
INSERT INTO tb_classe(modo, nivel, forma_combate) values ("Multi-Player","Difícil","1ª Pessoa");
INSERT INTO tb_classe(modo, nivel, forma_combate) values ("Battle Royale","Expert","3ª Pessoa");

-- populando tb_personagem
INSERT INTO tb_personagem(divindade, arma, forca, defesa, habilidade) values ("Atenas","Espada",1200,1700,"Lutadora");
INSERT INTO tb_personagem(divindade, arma, forca, defesa, habilidade) values ("Cronos","Espada Etérea",2200,1700,"Mago");
INSERT INTO tb_personagem(divindade, arma, forca, defesa, habilidade) values ("Ártemis","Arco",1500,1300,"Lutadora");
INSERT INTO tb_personagem(divindade, arma, forca, defesa, habilidade) values ("Zeus","Espada Divina",2800,2100,"Mago");
INSERT INTO tb_personagem(divindade, arma, forca, defesa, habilidade) values ("Nero","Arma de Fogo Celestial",2500,1900,"Justiceiro");
INSERT INTO tb_personagem(divindade, arma, forca, defesa, habilidade) values ("Ênio","Fogo Celestial e Escudo",2900,2800,"Justiceira");
INSERT INTO tb_personagem(divindade, arma, forca, defesa, habilidade) values ("Eros","Arco e Escudo Mágico",1800,2500,"Mago");
INSERT INTO tb_personagem(divindade, arma, forca, defesa, habilidade) values ("Perséfone","Espada Celestial",2200,1700,"Justiceira");

SELECT * FROM tb_personagem WHERE forca > 2000;

SELECT * FROM tb_personagem WHERE defesa >= 1000 OR forca >=  2000; 

SELECT * FROM tb_personagem WHERE divindade LIKE '%r%';
	 
SELECT * FROM tb_personagem WHERE habilidade = "Lutadora";
 
SELECT * FROM tb_classe INNER JOIN tb_personagem ON tb_classe.id_usuario = tb_personagem.id_personagem;




