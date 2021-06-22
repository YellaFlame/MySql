INSERT INTO tb_categoria(id_produto, tipo, sabor)
VALUES
(1,"Pizza","Doce"),
(2,"Pizza","Salgada"),
(3,"Esfiha","Doce"),
(4,"Esfiha","Salgada");

INSERT INTO tb_produto(n_pedido, descricao, endereco_entrega, quantidade, valor, fk_categoria)
VALUES
(25,"Frango com Catupiry","Rua sobe e desce",1,50.00,2),
(45,"Calabresa","Rua 12345",2,70.0,2),
(33,"Nutella","Rua kkkkkk",5,10.0,3),
(68,"Brigadeiro","Rua é isso ai",5,15.0,3),
(89,"Morango com Banana","Rua esqueci",5,20.0,1),
(40,"Leite condensado com paçoca","Rua ta ligado ali",6,25.0,1),
(12,"Queijo","Rua perto de la",8,35.0,4),
(20,"Carne","Rua ta chegando",10,40.0,4);



