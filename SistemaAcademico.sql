create database sistemaAcademico;
use sistemaAcademico;
create table curso(
	CodCurso char(3)not null,
    Nome char(30),
    Mensalidade decimal(6,2),
    primary key(CodCurso)
    );
create table Aluno(
	RA char(9) not null unique primary key,
    RG char(9)not null,
    Nome char(30),
    CodCurso char(3),
    foreign key (CodCurso) references curso(CodCurso)
);  
create table Disciplina(
	CodDisc char(5)not null unique,
    Nome char(30),
    CodCurso char(3),
    NroCreditos int,
    primary key(CodDisc),
    foreign key(CodCurso) references curso(CodCurso)
);
create table Boletim(
	RA char(9)not null,
    CodDisc char(5)not null,
    Nota decimal(5,2),
    primary key(RA,CodDisc),
    foreign key(RA) references Aluno(RA),
    foreign key(CodDisc) references Disciplina(CodDisc) 
);
insert into curso(CodCurso,Nome,Mensalidade) 
values('AS','Analise de Sistemas',1000.00);
insert into curso(CodCurso,Nome,Mensalidade) 
values('CC','Ciencia da computacao',950.00);
insert into curso(CodCurso,Nome,Mensalidade) 
values('SI','Sistemas da informacao',800.00);

insert into ALUNO values
('123','12345','BIANCA MARIA PEDROSA','AS'),
('212','21234','TATIANE CITTON','AS'),
('221','22145','ALEXANDRE PEDROSA ','CC'),
('231','23144','ALEXANDRE MONTEIRO','CC'),
('321','32111','MARCIA RIBEIRO ','CC'),
('661','66123','JUSSARA MARANDOLA','SI'),
('765','76512','WALTER RODRIGUES','SI');

insert into disciplina values
	('BD','BANCO DE DADOS','CC',4),
    ('BDA','BANCO DE DADOS AVANCADOS','CC',6),
	('BDOO','BANCO DE DADOS O OBJETOS','SI',4),
	('BDS','SISTEMAS DE BANCO DE DADOS','AS', 4),
    ('DBD','DESENVOLVIMENTO BANCO DE DADOS','SI',6),
	('IBD','INTRODUCAO A BANCO D E DADOS','AS',2);
    
insert into boletim values
	('123','BDS',10),
    ('212','IBD',7.5),
    ('231','BD',9),
    ('231','BDA',9.6),
    ('661','DBD',8),
    ('765','DBD',6);
    

