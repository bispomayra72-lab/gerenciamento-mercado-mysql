create table fornecedores(
id_f int not null auto_increment primary key,
nome varchar (100) not null,
telefone varchar (20),
email varchar (150)
)default charset = utf8mb4;

create table produtos(
id_p int not null auto_increment primary key,
codigo_barras varchar (20) not null unique,
nome varchar (100) not null,
preço decimal (10,2) not null,
estoque int not null check (estoque >=0),
id_ca int,
id_fo int,
foreign key (id_ca) references categorias (id_c),
foreign key (id_fo) references fornecedores (id_f)
)default charset = utf8mb4;


