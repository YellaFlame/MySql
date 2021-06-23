CREATE DATABASE db_cidade_das_frutas;
USE db_cidade_das_frutas;

CREATE TABLE tb_categoria (
	id INT NOT NULL AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    
    PRIMARY KEY(id)
);
CREATE TABLE tb_produto (
	id INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    fk_categoria_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (fk_categoria_id) REFERENCES tb_categoria(id)
);