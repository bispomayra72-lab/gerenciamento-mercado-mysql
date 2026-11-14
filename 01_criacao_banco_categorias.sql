create database mercado;

use mercado;

create table categorias (
id_c int not null auto_increment primary key,
nome varchar (100) not null
) default charset = utf8mb4;
