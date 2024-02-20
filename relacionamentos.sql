#Relacionamentos da Tabela tbl_agenda

alter table tbl_agenda add constraint fk_sala_agenda 
foreign key (cod_sala) references tbl_sala (cod_sala);

alter table tbl_agenda add constraint fk_medico_agenda 
foreign key (cod_medico) references tbl_medico (cod_medico);

alter table tbl_agenda add constraint fk_paciente_agenda 
foreign key (cod_paciente) references tbl_paciente (cod_paciente);