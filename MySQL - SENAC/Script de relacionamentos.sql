update pacientes
set
convenio_id = 4
where id = 7 or id = 8;

insert into medicos_especialidade(medico_id, especialidade_id) values
								(1, 1),
                                (1, 2);
insert into medicos_especialidade(medico_id, especialidade_id) values
								(3, 2),
                                (3, 4),
                                (8, 3),
                                (8, 1),
                                (9, 2),
                                (9, 3);
UPDATE CONSULTA 
SET
pacientes_id = 1,
convenio_id = 1,
especialidade_id = 1
where id = 1;

UPDATE CONSULTA 
SET 
pacientes_id = 8,
convenio_id = 4
where id = 8;


insert into consulta(pacientes_id, convenio_id) values
			(1,1),
            (2,1),
            (3,2),
            (4,2),
            (5,3),
            (6,3),
            (7,4),
            (8,4);

UPDATE CONSULTA 
SET 
pacientes_id = 8,
convenio_id = 4
where id = 13;

update consulta 
set 
medico_responsavel_id = 3,
especialidade_id = 2
where id = 5 or id = 6;

update receita 
set
consulta_id = 1
where id = 1;

update quarto
set
tipo_quarto_id = 1
where id = 1;

UPDATE internacao_efermeiro
set
responsavel_id = 1,
internacao_id = 1;
                             
select * from consulta;
select * from medicos;
select * from medicos_especialidade;
select * from especialidades;
select * from receita;
select * from pacientes;
select * from convenio;
select * from enfermeiro;
select * from especialidades;
select * from internacao;
select * from internacao_efermeiro;
select * from quarto;
select * from receita;
select * from tipo_quarto;

insert into internacao (id, data_entrada,data_prev_alta,data_alta_,procedimento,quarto_id,pacientes_id,medico_id) values
						(2, '2015-06-04', '2015-09-02','2015-09-01','periodo em observação',1,1,2),
                        (3, '2016-07-08', '2016-08-02','2016-08-01','Periodo em obervação',1,2,3),
                        (4, '2017-08-09', '2017-08-02','2017-08-01','Periodo em obeservação',2,3,4),
                        (5, '2015-06-04', '2015-09-02','2015-09-01','Periodo em observação',3,4,5),
                         (6, '2016-07-08', '2016-08-02','2016-08-01','Periodo em obervação',1,1,6),
                          (7, '2016-07-08', '2016-08-02','2016-08-01','Periodo em obervação',1,2,7);
                          
insert into internacao_efermeiro(responsavel_id,internacao_id)values
								(1,1),
                                (2,1),
                                (3,2),
                                (4,2),
                                (5,3),
                                (6,3),
                                (7,4),
                                (8,4),
                                (9,5),
                                (10,5),
                                (1,6),
                                (2,6),
                                (3,7),
                                (4,7);
 