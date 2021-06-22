SELECT * FROM tb_produto WHERE valor > 50.00;

SELECT * FROM tb_produto WHERE valor > 3.00 OR valor <= 60.00;

SELECT * FROM tb_produto WHERE nome LIKE 'B%';

SELECT * FROM tb_categoria
	INNER JOIN tb_produto ON tb_produto.fk_categoria = tb_categoria.id;
    
SELECT * FROM tb_categoria
	INNER JOIN tb_produto ON tb_produto.fk_categoria = tb_categoria.id
    WHERE fk_categoria = 2;