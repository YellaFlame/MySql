use db_ecommerce;
create table tb_produtos(
	id bigint(2) auto_increment,
    marca varchar(30) not null,
    preco decimal(10,2) not null,
    categoria varchar(30) not null,
    disponivel boolean,
    
    primary key(id) 
);


