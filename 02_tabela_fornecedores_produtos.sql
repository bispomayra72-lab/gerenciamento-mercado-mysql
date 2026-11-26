create table fornecedores(
id_fornecedores int not null auto_increment primary key,
nome varchar (100) not null,
telefone varchar (20),
email varchar (150)
)engine = innodb default charset = utf8mb4;

create table produtos(
id_produtos int not null auto_increment primary key,
codigo_barras varchar (20) not null unique,
nome varchar (100) not null,
preco decimal (10,2) not null check(preco >=0),
estoque decimal (10,2) not null check (estoque >=0),
id_categorias int not null,
id_fornecedores int not null,
foreign key (id_categorias) references categorias (id_categorias),
foreign key (id_fornecedores) references fornecedores (id_fornecedores)
)engine = innodb default charset = utf8mb4;


