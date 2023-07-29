/*1.	Todos os dados e o valor médio das consultas do ano de 2020 e das que foram feitas sob convênio.*/
select avg (valor) from consultas where data_hora >='2020-01-01 00:00:00' and convenio_id is not null;

select * from consultas where data_hora >='2020-01-01 00:00:00' and convenio_id is not null;

/*2.	Todos os dados das internações que tiveram data de alta maior que a data prevista para a alta.*/
select * from internacao where data_alta>=data_prev_alta

/*3.	Receituário completo da primeira consulta registrada com receituário associado.*/ 

/*preenchi somente 1 receituario pq tinha colocado ele junto das consultas*/
insert into receita (medicamentos,quantidade,instrucoes,consultas_id)
values ('paracetamol', '750mg', '1 comprimido', 1);
select * from receita where consultas_id=1

/*4.	Todos os dados da consulta de maior valor e também da de menor valor (ambas as consultas não foram realizadas sob convênio).*/

select min(valor) as 'menor_valor',
max(valor) as 'maior_valor'
 from consultas 
 where convenio_id is null;
 
 select * from consultas where convenio_id is null;
 
 /*5.	Todos os dados das internações em seus respectivos quartos, calculando o total da internação a partir do valor de diária do quarto e o número de dias entre a entrada e a alta.*/
 
Select * from quarto;
Select * from tipo_quarto;
Select * from internacao;

select i.data_entrada, i.data_prev_alta, data_alta, i.procedimento, i.medico_id, i.paciente_id, i.quarto_id, t.descricao, t.valor_diaria,
DATEDIFF(i.data_alta, data_entrada) as total_dias,
(valor_diaria*DATEDIFF(i.data_alta, data_entrada)) as total_internacao
from internacao as i INNER JOIN quarto as q ON (i.quarto_id=q.id)
INNER JOIN tipo_quarto as t ON (q.tipo_id=t.id)


/*6.	Data, procedimento e número de quarto de internações em quartos do tipo “apartamento”.*/

select i.data_entrada, i.data_prev_alta, data_alta, i.procedimento, i.medico_id, i.paciente_id, q.numero, t.descricao, t.valor_diaria
from internacao as i INNER JOIN quarto as q ON (i.quarto_id=q.id)
INNER JOIN tipo_quarto as t ON (q.tipo_id=t.id) 
where t.descricao= 'Apartimento'

/*7.	Nome do paciente, data da consulta e especialidade de todas as consultas em que os pacientes eram menores de 18 anos na data da consulta e cuja especialidade não seja “pediatria”, ordenando por data de realização da consulta.*/

select * from consultas;

select c.data_hora, p.nome, e.nome, p.data_nascimento
from consultas as c INNER JOIN paciente as p ON (c.paciente_id=p.id)
INNER JOIN medico_especialidade as m ON (c.medico_especialidade_id=m.id)
INNER JOIN especialidade as e ON (m.especialidade_id=e.id)
where data_nascimento>'2000-01-01' and e.nome != 'pediatria'
order by data_hora

/*8.	Nome do paciente, nome do médico, data da internação e procedimentos das internações realizadas por médicos da especialidade “gastroenterologia”, que tenham acontecido em “enfermaria”.*/

update internacao set quarto_id=3 where medico_id=2;
alter table internacao add especialidade varchar(100);
update internacao set especialidade= 'gastroentereologia' where id=1;
update internacao set especialidade= 'pediatria' where id=2;
update internacao set especialidade= 'gastroentereologia' where id=3;
update internacao set especialidade= 'clinica geral'where id=4;
update internacao set especialidade= 'clinica geral' where id=5;
update internacao set especialidade= 'gastroentereologia' where id=6;
update internacao set especialidade= 'pediatria' where id=7;

select * from internacao;

select i.data_entrada, i.data_prev_alta, i.data_alta, i.procedimento, m.nome as nome_medico, p.nome as nome_paciente, t.descricao, i.especialidade
from internacao as i INNER JOIN medico as m ON (i.medico_id=m.id)
INNER JOIN paciente as p ON (i.paciente_id=p.id)
INNER JOIN quarto as q ON (i.quarto_id=q.id)
INNER JOIN tipo_quarto as t ON (q.tipo_id=t.id)
where i.especialidade='gastroentereologia' and t.descricao='Enfermaria'

/*9.	Os nomes dos médicos, seus CRMs e a quantidade de consultas que cada um realizou.*/
select * from consultas;
select * from medico;

select m.nome, m.CRM, SUM(medico_id=m.id) as qtd_consultas
from consultas as c INNER JOIN medico as m ON (c.medico_id=m.id)
group by c.medico_id

/*10.  Os nomes, CREs e número de internações de enfermeiros que participaram de mais de uma internação.*/

select e.nome, e.CRE, SUM(enfermeiro_id=e.id) as qtd_internacao
from enfermeiro as e INNER JOIN enfermeiro_internacao as ei ON (ei.enfermeiro_id=e.id)
INNER JOIN internacao as i ON (ei.internacao_id=i.id)
group by e.nome
having qtd_internacao !=1