CREATE DATABASE BD_Locadora;
USE BD_Locadora;

create table Endereco(
	id_endereco int(11) not null primary key auto_increment,
    estado varchar(30) not null,
    cidade varchar(30) not null,
    rua varchar(30) not null 
);

create table Cliente(
	id_cliente int(11) not null primary key auto_increment,
    nome varchar(50) not null,
    sexo enum("M","F","Outro"),
    fk_endereco int(11) not null,
    email varchar(150) not null,
    telefone varchar(11),
    foreign key (fk_endereco) references Endereco(id_endereco)
);

create table Veiculo(
	id_veiculo int(11) not null primary key auto_increment,
    marca varchar(30) not null,
    modelo varchar(30) not null,
    ano int(4) not null,
    quilometragem int(5) not null,
    cor varchar(20) not null
);

create table locacao(
	id_locacao int(11) not null primary key auto_increment,
    fk_cliente int(11) not null,
    fk_veiculo int(11) not null,
    data_locacao varchar(10) not null,
    data_devolucao varchar(10) not null,
    valor float(5,2) not null,
    foreign key(fk_veiculo) references Veiculo(id_veiculo),
    foreign key(fk_cliente) references Cliente(id_cliente)
);

insert into Endereco(estado,cidade,rua) values 
("SP","Peruibe","Rua 1"),
("SP","Santos","Rua Ouro Verde"),
("SP","Praia Grande","Avenida Tiradentes"),
("SP", "São Vicente","Viela Projetada"),
("SP","São Vicente","Rua Ubiratan");

insert into Cliente(nome,sexo,email,fk_endereco,telefone) values 
("Paulo Coope","M","paulocope@gmail.com","1","1332247786"),
("Sandro Junior","M","sandrinho@uol.com.br","2","1336457858"),
("Samanta Silva Bueno","F","sasabueno@hotmail.com","3","1336457858"),
("Janaina da Silva Sobrinho","F","janasobrinho@bol.com.br","4","1332256684"),
("Joséfa Aparecida da Silva","F","josilva@uol.com.br","5","1336645528");

insert into Veiculo (marca,modelo,ano,quilometragem,cor) values
("Volkswagen", "gol g5", "2018", "35000", "preto"),
( "Fiat", "Uno", "2022", "10000", "prata"),
("Ford", "Fiesta", "2021", "15000", "branco"),
("Fiat", "Palio", "2020", "12000", "vermelho"),
("Volkswagen", "Fox", "2023", "5000", "branco");

insert into Locacao(fk_cliente,fk_veiculo,data_locacao,data_devolucao, valor) values
("1","2","10-04-2024","20-04-2024","500.00"),
("2","3","15-02-2024","25-03-2024","250.00"),
("3","1","10-03-2024","20-03-2024","600.00"),
("4","4","12-05-2024","20-05-2024","700.00"),
("5","5","01-03-2024","20-03-2024","900.00");
