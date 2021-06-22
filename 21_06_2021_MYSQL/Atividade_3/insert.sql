INSERT INTO tb_categoria(tipo)
VALUES
("Cosmetico"),
("Generico"),
("Injetavel"),
("Vitamina"),
("Suplemento Alimentar");

INSERT INTO tb_produto(data_de_entrada, nome, valor, estoque, fk_categoria)
VALUES
('2021-06-21',"Ibuprofeno",59.90,1,2),
('2021-06-21',"Bucofen+",39.90,1,5),
('2021-06-21',"Ciclo 21",29.90,1,3),
('2021-06-21',"Perfume Malbec",29.90,1,1),
('2021-06-21',"Batom Vermelho",9.90,1,1),
('2021-06-21',"Tylenol",29.90,1,2),
('2021-06-21',"Complexo B",29.90,1,4),
('2021-06-21',"Vodol",29.90,1,2);
