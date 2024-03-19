#Criação do delimitador de inicio da trigger
delimiter $ 
	create trigger trg_delete_paciente before delete on tbl_paciente
	for each row #Na linha que sofre a ação
	begin
		insert into tbl_paciente_backup
		set
			cod_paciente = old.cod_paciente,
			nome_paciente = old.nome_paciente,
			telefone_paciente = old.telefone_paciente,
			celular_paciente = old.celular_paciente,
			email_paciente = old.email_paciente,
			nome_responsavel = old.nome_responsavel,
			telefone_responsavel = old.telefone_responsavel,
			date_delete = now();
	#Criação do delimitador de fim da trigger
	end
$
