create database loja_online;
use loja_online;

create table cliente(
	id_cliente int auto_increment primary key,
    nome varchar(100) not null,
    telefone varchar(20),
    conta varchar(100)
    );
create table categoria(
	id_categoria int auto_increment primary key,
    nome varchar(100) not null,
    descricao varchar(255)
	);
create table produto(
	id_produto int auto_increment primary key,
	nome varchar(100) not null,
    preço decimal(10,2) not null,
    id_categoria int not null,
    
    foreign key(id_categoria) references
    categoria(id_categoria)
    );
create table pedido(
	id_pedido int auto_increment primary key,
    data date not null,
    valor decimal(10,2),
    id_cliente int not null,
    
    foreign key (id_cliente)references
	cliente(id_cliente)
    );
create table forma_pagamento(
	id_forma_pagamento int
    auto_increment primary key,
    tipo varchar(50) not null
    );
create table item_pedido(
	id_pedido int,
    id_produto int,
    quantidade int not null,
    
    primary key(id_pedido,id_produto),
    foreign key(id_pedido)
    references
    pedido(id_pedido),
    foreign key(id_produto)
    references
    produto(id_produto)
    );
    alter table pedido
    add id_forma_pagamento int not null,
    add foreign key(id_forma_pagamento)
    references
    forma_pagamento(id_forma_pagamento);
    
insert into cliente(nome, telefone, conta)
values('joão', '51999481243', 'joao@gmail.com');

SELECT * FROM cliente;

insert into categoria(nome, descricao)
values('roupa', 'para dar de presente');

select * from categoria;

insert into produto(nome, preço)
values('camiseta', 200);

select * from produto;

insert into pedido(valor)
values('200');

select * from pedido;

insert into forma_pagamento(tipo)
values('pix');

select * from forma_pedido;

insert item_pedido(quantidade)
values(5);

select * from item_pedido;