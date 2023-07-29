select * from consulta;
select * from convenio;
select * from enfermeiro;
select * from especialidades;
select * from internacao;
select * from internacao_efermeiro;
select * from medicos;
select * from medicos_especialidade;
select * from pacientes;
select * from quarto;
select * from receita;
select * from tipo_quarto;

alter table medicos add column em_atividade varchar(45);

update medicos
set
em_atividade = 'Em atividade';

update medicos
set
em_atividade = 'Inativos'
where id = 3 or id = 4;

update internacao
set 
data_alta_ = '2015-06-7'
where quarto_id = 3;

delete from convenio
where id = 4;