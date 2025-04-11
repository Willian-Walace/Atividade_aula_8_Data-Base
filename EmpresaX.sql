create database EmpresaX;

use EmpresaX;

 create table departamento(
	iddepart int not null primary key,
    nome varchar(20),
    localizacao char(10)
 );

create table funcionarios(
	idfunc int not null primary key,
    iddepart int,
    nome varchar(30),
    cargo varchar(20),
    salario decimal(6,2),
    datacontratacao date,
	foreign key (iddepart) references departamento(iddepart)
);
select * from funcionarios;

insert into departamento values
	(001,'RH','andar 1'),
    (002,'Compras','andar 2'),
    (003,'Vendas','andar 3');
    
insert into funcionarios values
	(100,001,'Carlos Antonio','Chefe de RH',1500.00,'1990-05-10'),
    (110,002,'Maria Juares','Lider de Compras',100.00,'2000-12-31'),
    (120,003,'Jose Paulo','Vendedor',700.00,'2010-09-06');
    
show databases;

show tables;

desc funcionarios;

select nome from funcionarios where salario between 3000 and 6000;

alter table funcionarios add departamento varchar(20)

