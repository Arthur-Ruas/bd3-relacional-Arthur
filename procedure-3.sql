#Criação do uma stored procedure com parâmetros que conta e retorna a quantidade de pacientes
delimiter $
	create procedure contagem_pacientes(out total_pacientes int)
    begin
		select count(cod_paciente) into total_pacientes from tbl_paciente;
    end
$ 

call contagem_pacientes(@total_pacientes);

select @total_pacientes;