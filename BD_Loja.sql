create database BD_Loja;
use BD_Loja;

create table TB_Clientes(
    ID_Cliente int primary key auto_increment not null,
    nome varchar(45) not null,
    email varchar(45) not null,
    dataNascimento date not null,
    telefone char(10) not null,
    endereco char(45) not null,
    sexo enum("M", "F"),
    status enum("Ruim", "Medio", "Otimo")
    
);

create table TB_Funcionarios(
    ID_Funcionario int primary key auto_increment not null,
    nome varchar(45) not null,
    email varchar(30) not null,
    telefone char(10) not null,
    sexo enum("M", "F")
    
);

create table TB_Pagamento(
    ID_Pagamento int primary key auto_increment not null,
    tipo varchar(45)
    
);

create table TB_Fornecedor(
    ID_Fornecedor int primary key auto_increment not null,
    nome varchar(45) not null,
    CNPS int(0) not null,
    telefone int(11) not null,
    email char(30)
    );

create table TB_Venda(
    ID_Venda int primary key auto_increment not null,
    foreign key(FK_Cliente) references TB_Clientes(ID_Cliente),
    foreign key(FK_Produto) references TB_Produtos(ID_Produto),
    dataVenda date not null,
    valorTotal float not null,
    foreign key(FK_Pagamento) references TB_Pagamento(ID_Pagamento),
    foreign key(FK_Funcionario)
    references TB_Funcionarios(ID_Funcionario)
    
);

create table TB_Produtos(
    ID_Produto int primary key auto_increment not null,
    descricao varchar(45),
     valor float not null,
    foreign key (FK_Fornecedor) references TB_Fornecedo(ID_Fornecedor)
    
);

create table TB_Estoque(
    ID_Estoque int primary key auto_increment not null,
    foreign key(FK_Produto) references TB_Produtos(ID_Produto),
    status char,
    quantidade int not null
    
);

