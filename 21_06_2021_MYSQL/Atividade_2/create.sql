CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id_produto INT NOT NULL,
	tipo VARCHAR(255) NOT NULL,
    sabor VARCHAR(255) NOT NULL,

    PRIMARY KEY (id_produto)
);

CREATE TABLE tb_produto(
	valor DECIMAL(10,2) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    n_pedido INT NOT NULL,
    endereco_entrega VARCHAR(255) NOT NULL,
    
	fk_categoria INT NOT NULL,
 
    FOREIGN KEY(fk_categoria) REFERENCES tb_categoria(id_produto)
);

ALTER TABLE tb_produto
ADD COLUMN quantidade INT NOT NULL AFTER endereco_entrega;