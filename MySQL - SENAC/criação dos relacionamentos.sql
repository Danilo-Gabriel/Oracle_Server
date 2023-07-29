alter table consulta add medico_responsavel_id int;
alter table consulta add especialidade_id int;
alter table consulta add pacientes_id int;
alter table consulta add convenio_id int;
alter table consulta add constraint FK_medico_responsavel_id foreign key (medico_responsavel_id) references medicos(id);
alter table consulta add constraint FK_especialidade foreign key (especialidade_id) references especialidades(id);
alter table consulta add constraint FK_pacientes_id foreign key (pacientes_id) references pacientes(id);
alter table consulta add constraint FK_convenio_id foreign key (convenio_id) references convenio(id);

alter table receita add consulta_id int;
alter table receita add constraint FK_consulta_id foreign key (consulta_id) references consulta(id);

alter table pacientes add convenio_id int;
alter table pacientes add constraint FK_convenio foreign key (convenio_id) references convenio(id);

alter table quarto add tipo_quarto_id int;
alter table quarto add constraint FK_tipo_quarto_id foreign key (tipo_quarto_id) references tipo_quarto(id);

alter table internacao add quarto_id int;
alter table internacao add pacientes_id int;
alter table internacao add medico_id int;
alter table internacao add constraint FK_quarto_id foreign key (quarto_id) references quarto(id);
alter table internacao add constraint FK_pacientes foreign key (pacientes_id) references pacientes(id);
alter table internacao add constraint FK_medico foreign key (medico_id) references medicos(id);

alter table internacao_efermeiro add constraint FK_responsavel_id foreign key (responsavel_id) references enfermeiro(id);
alter table internacao_efermeiro add constraint FK_internacao_id foreign key (internacao_id) references internacao(id);