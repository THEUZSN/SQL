create database biblioteca;
use biblioteca;

create table autores (
  id_autor int primary key auto_increment,
  nome varchar(45) not null,
  nacionalidade varchar(45) not null
);

create table livros (
  id_livro int primary key auto_increment,
  titulo varchar(45) not null,
  ano_publicacao int not null,
  quantidade_exemplares int not null,
  id_autor int not null,
  foreign key (id_autor) references autores(id_autor)
);

create table emprestimos (
  id_emprestimo int primary key auto_increment,
  nome_cliente varchar(45) not null,
  id_livro int not null,
  data_devolucao date not null,
  foreign key (id_livro) references livros(id_livro)
);