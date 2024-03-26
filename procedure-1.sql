#Criação do uma stored procedure sem parâmetros
delimiter $
	create procedure listagem_agenda()
    begin
		select
			ta.data_cirurgia, ta.status_cirurgia, 
			ts.numero_sala, 
			tm.nome_medico, tm.celular_medico, 
			tp.nome_paciente, tp.celular_paciente, tp.nome_responsavel, tp.telefone_responsavel
		from tbl_agenda as ta
		inner join tbl_sala as ts on ts.cod_sala = ta.cod_sala
		inner join tbl_medico as tm on tm.cod_medico = ta.cod_medico
		inner join tbl_paciente as tp on tp.cod_paciente = ta.cod_paciente;
    end
$ 

call listagem_agenda();
