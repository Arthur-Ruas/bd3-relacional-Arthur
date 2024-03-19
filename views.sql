create view listagem_geral_medico as 
select * from tbl_medico;

select * from listagem_geral_medico
where cod_medico=1;


/*-Listagem médico/especialidade-*/
create view listagem_medico_especialidade as
select 
    tm.nome_medico, tm.telefone_medico, tm.celular_medico, tm.email_medico, te.nome_especialidade
from tbl_medico as tm
inner join tbl_especialidade te on te.cod_especialidade = tm.cod_especialidade;


/*Listagem sala/especialidade*/
create view listagem_sala_especialidade as
select
    ts.numero_sala, te.nome_especialidade
from tbl_sala as ts
inner join tbl_especialidade te on te.cod_especialidade = ts.cod_especialidade;


/*Listagem agenda*/
create view listagem_agenda as
select
	ta.data_cirurgia, ta.status_cirurgia, 
	ts.numero_sala, 
    tm.nome_medico, tm.celular_medico, 
    tp.nome_paciente, tp.celular_paciente, tp.nome_responsavel, tp.telefone_responsavel
from tbl_agenda as ta
inner join tbl_sala as ts on ts.cod_sala = ta.cod_sala
inner join tbl_medico as tm on tm.cod_medico = ta.cod_medico
inner join tbl_paciente as tp on tp.cod_paciente = ta.cod_paciente;


/*-Testando as Views-*/
select * from listagem_medico_especialidade;
select * from listagem_sala_especialidade;
select * from listagem_agenda;


/*-Excluir as Views-*/
drop view listagem_geral_medico;
drop view listagem_medico_especialidade;
drop view listagem_sala_especialidade;
drop view listagem_agenda;
