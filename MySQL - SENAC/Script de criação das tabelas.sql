create table if not exists medicos (
id int not null auto_increment,
nome varchar(45) not null,
nascimento date not null,
cpf varchar(11) not null unique,
crm varchar(45) not null,
telefone varchar(45),
endereco varchar(45),
especializacao varchar(45),
primary key (id) 
);

create table if not exists pacientes (
id int not null auto_increment,
nome varchar(45) not null,
cpf varchar(11) not null unique,
endereco varchar(45),
nascimento date,
telefone varchar(45),
email varchar(45),
primary key (id)
);

create table if not exists consulta (
id int not null auto_increment,
data_hora datetime not null,
valor decimal(9,2) not null,
carteinha_convenio varchar(45),
primary key (id)
);


create table if not exists receita (
id int not null auto_increment,
medicamento varchar(45) not null,
quantidade varchar(45) not null,
instrucao_uso varchar(45) not null,
primary key (id)
);

create table if not exists especialidades (
id int not null auto_increment,
descricao_especialidade varchar(45) not null,
primary key (id)
);

create table if not exists convenio(
id int not null auto_increment,
nome varchar(45) not null,
cnpj varchar(45) not null unique,
carencia date,
primary key (id)
);

create table if not exists medicos_especialidades (
id int not null auto_increment,
medico_id int,
especialidade_id int,
primary key (id)
);



create table if not exists quarto (
id int not null auto_increment, 
numero varchar(45),
tipo varchar(45),
primary key (id)
);

create table if not exists tipo_quarto (
id int not null auto_increment,
valor_diaria decimal(9,2) not null,
descricao varchar(45) not null,
primary key (id)
);

create table if not exists internacao (
id int not null auto_increment,
data_entrada date not null,
data_prev_alta date,
data_alta_ date,
procedimento tinytext,
primary key (id)
);

create table if not exists internacao_efermeiro (
responsavel_id int,
internacao_id int
);

create table if not exists enfermeiro (
id int not null auto_increment,
nome varchar(45) not null,
cpf varchar(11) not null unique,
cre varchar(45) not null unique,
primary key (id)
);







