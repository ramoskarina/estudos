CREATE DATABASE cadastro
default character set utf8mb4
default collate utf8mb4_general_ci;

use cadastro;

CREATE TABLE pessoas (
	id int NOT NULL auto_increment primary key,
	nome varchar(30) NOT NULL,
    nascimento date,
    sexo enum('M','F'),
    peso decimal(5,2),
    altura decimal(3,2),
    nacionalidade varchar(20) default 'Brasil'
) default charset = utf8mb4;

insert into pessoas values
(default, 'Charlie', '1920-12-30', 'M', '50.2', '1.65', 'EUA'),
(default, 'Elizabeth', '1920-12-30', 'F', '50.2', '1.65', 'Suiça'),
(default, 'Pedro', '1920-12-30', 'F', '50.2', '1.65', 'Espanha');

select * from pessoas;

alter table pessoas
add column profissao varchar(10) after nome;

alter table pessoas
add column codigo int first;

alter table pessoas
modify column profissao varchar(20) default '';

alter table pessoas
change column profissao prof varchar(20);

alter table pessoas
rename to gafanhotos;

desc gafanhotos;






create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2016')
default charset = utf8mb4;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key (idcurso);

create table if not exists teste(
id int,
nome varchar(10),
idade int
);

insert into teste values
('1', 'Pedro', '22'),
('2', 'Maria', '12'),
('3', 'Maricota', '77');

select * from teste;

drop table if exists teste;