#Relacionamentos da tabela Medico
alter table tbl_medico add constraint fk_especialidade_medico 
foreign key (cod_especialidade) references tbl_especialidade (cod_especialidade);

#Relacionamentos da tabela Sala
alter table tbl_sala add constraint fk_especialidade_sala 
foreign key (cod_especialidade) references tbl_especialidade (cod_especialidade);

#Relacionamentos da tabela Insumos
alter table tbl_insumos add constraint fk_paciente_insumos
foreign key (cod_paciente) references tbl_paciente (cod_paciente);

#Relacionamentos da tabela Agenda
alter table tbl_agenda add(
constraint fk_sala_agenda foreign key (cod_sala) references tbl_sala (cod_sala), 
constraint fk_medico_agenda foreign key (cod_medico) references tbl_medico (cod_medico),
constraint fk_paciente_agenda foreign key (cod_paciente) references tbl_paciente (cod_paciente)
);