USE db_school;

CREATE TABLE tb_students(
	ri BIGINT (3) AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    periodo VARCHAR(50) NOT NULL,
    nota DECIMAL(2,1) NOT NULL,
    grau VARCHAR(50) NOT NULL,
    
    primary key (ri)
);