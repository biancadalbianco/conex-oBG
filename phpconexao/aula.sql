create database dbturma63TA;
/* visualizar banco */
show databases;
/* deleta banco */
drop database dbturma63TA;
/* usar banco de dados*/
use dbturma63TA;
/* cria a tabela */
create table cadastro(idcadastro int, nome varchar(100), idade int);
show tables;
select * from cadastro;

drop table cadastro;

create table produtos(nome varchar(50), sky char(5), informacoes mediumtext);
select * from produtos;

insert into cadastro(idcadastro, nome, idade) values (1, "jailson mendes", 33);

insert into produtos(nome, sky, informacoes) values ('QBOA', 'QB', 'produto de limpeza');

create table servidores(nome varchar(100), espaco_disco int, ligado bool);
insert into servidores(nome, espaco_disco, ligado) values('SERVIDOR GERAL', 234567, 0);
insert into servidores(nome, espaco_disco, ligado) values('SERVIDOR PREDIO D', 834567, 1);
select * from servidores;

create table aniversarios (nome varchar(100), data_nascimento date);
insert into aniversarios (nome, data_nascimento) values ("jao", "1999-09-12");
insert into aniversarios (nome, data_nascimento) values ("jorge", "2008-11-09");
insert into aniversarios (nome, data_nascimento) values ("janta", "1875-3-04");
insert into aniversarios (nome, data_nascimento) values ("jente", "0030-02-07");

select * from aniversarios;

create table funcionario (nome varchar (100));
alter table funcionarios add column(profissao varchar(100));
alter table funcionarios add column(cpf int, funcionario_ativo bool);
alter table funcionarios drop column cpf;
alter table funcionarios add column(datanascimento varchar(10));
alter table funcionarios modify column datanascimento date;

create database exercicio1;
use exercicio1;
CREATE TABLE funcionario(
	codigo int,
    nome varchar(50),
    endereco varchar(300),
    telefone int,
    funcionario int,
    constraint pk_funcionario primary key (codigo)
);
CREATE TABLE departamento(
	codigo int,
    descricao mediumtext,
    constraint pk_departamento primary key (codigo)
);
CREATE TABLE dependentes(
	codigo int,
    cod_funcionario int,
    nome varchar(50),
    datansc date,
    constraint pk_dependentes primary key (codigo),
    constraint fk_funcionario foreign key (cod_funcionario) references funcionario (codigo)
    );

