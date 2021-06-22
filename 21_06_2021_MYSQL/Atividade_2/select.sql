SELECT * FROM tb_produto WHERE valor > 45.00;

SELECT * FROM tb_produto WHERE valor > 29.00 AND valor < 60.00;

SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.id_produto = tb_produto.fk_categoria;
    
SELECT * FROM tb_produto
	INNER JOIN tb_categoria on tb_categoria.id_produto = tb_produto.fk_categoria
    WHERE id_produto = 1;