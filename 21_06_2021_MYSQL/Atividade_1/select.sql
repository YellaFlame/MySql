SELECT * FROM tb_personagens WHERE poder_ataque > 900;

SELECT * FROM tb_personagens WHERE poder_defesa > 300 AND poder_defesa < 900;

SELECT * FROM tb_personagens WHERE nome LIKE '%x';

SELECT * FROM tb_classe
	INNER JOIN tb_personagens ON tb_personagens.fk_classe = tb_classe.id_classe;
    
    SELECT * FROM tb_classe
	INNER JOIN tb_personagens ON tb_personagens.fk_classe = tb_classe.id_classe
		WHERE id_classe = 1;
		