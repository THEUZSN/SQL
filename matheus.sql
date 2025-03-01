create database BD_ESCOLA;
use BD_ESCOLA;

create table TB_Aluno (
ID_aluno int(3) primary key auto_increment,
nome varchar(45) not null,
email varchar(50) not null,
telefone char(9) not null,
sexo enum('m', 'f') not null,
idade char(2) not null
);

create table TB_Professor(
ID_Professor int(3) primary key auto_increment,
Nome varchar(45) not null,
email varchar(50) not null,
CPF int(11) not null,
RG int(10),
idade int(2)
);

create table TB_Funcionario(
ID_funcionario int(3) primary key auto_increment,
nome varchar(45) not null,
idade int(2) not null,
sexo enum('m', 'f') not null,
email varchar(50) not null
);

create table TB_Livros(
ID_Livro int(3) primary key auto_increment,
nome varchar(45) not null,
genero enum ('poesia', 'soneto', 'romance', 'fábula', 'novela', 'cronica', 'conto', 'ensaio', 'biografia', 'chicklit', 'fantasia', 'distopia', 'ficcao cientifica', 'horror', 'fantastica', 'infanto juvenil', 'young adult', 'suspense', 'autoajuda', 'negocios', 'tecnologia', 'hq', 'aventura'),
qtd_pg int(4) not null,
ano int(4) not null
);

insert into TB_Aluno (nome, email, telefone, sexo, idade) values ('matheus', 'matheus@gmail.com', '992288222', 'm', '16');

