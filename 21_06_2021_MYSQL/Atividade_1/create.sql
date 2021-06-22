CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;
CREATE TABLE tb_classe(
	id_classe INT AUTO_INCREMENT,
	classe VARCHAR(255) NOT NULL,
    habilidade_especial VARCHAR(255) NOT NULL,
    
    PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagens(
	nome VARCHAR(255) NOT NULL,
    poder_ataque FLOAT NOT NULL,
    poder_defesa FLOAT NOT NULL,
    genero VARCHAR(255) NOT NULL,
	natureza VARCHAR(255) NOT NULL,
    fk_classe INT,
    
    FOREIGN KEY (fk_classe) REFERENCES tb_classe (id_classe)
);