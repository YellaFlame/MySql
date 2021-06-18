use db_rh;

create table tb_funcionarios(
	id bigint(5) auto_increment,
    nome varchar(20) not null,
    cargo varchar(20) not null,
    salario decimal(10,2) not null,
    departamento varchar(30),
    
    primary key (id)
);
