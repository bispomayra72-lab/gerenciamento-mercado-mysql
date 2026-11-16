create table vendas(
id_vendas int not null auto_increment primary key,
data_venda datetime not null
)engine = innodb default charset = utf8mb4;

create table itens_vendas(
id_itens int not null auto_increment primary key,
id_vendas int not null,
id_produtos int not null,
quantidade int not null check(quantidade >0),
preco_unitario decimal(10,2) not null check(preco_unitario >=0),
foreign key (id_vendas) references vendas (id_vendas),
foreign key (id_produtos) references produtos (id_produtos)
)engine = innodb default charset = utf8mb4;