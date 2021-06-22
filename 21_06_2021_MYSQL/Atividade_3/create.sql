CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;
CREATE TABLE tb_categoria(
	id INT NOT NULL AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    
    PRIMARY KEY (id)
);

CREATE TABLE tb_produto(
	nome VARCHAR(255) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
	estoque BOOLEAN NOT NULL,
	fk_categoria INT NOT NULL,
    data_de_entrada DATE NOT NULL,
    
	FOREIGN KEY(fk_categoria) REFERENCES tb_categoria(id)
);

