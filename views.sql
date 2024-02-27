create view listagem_geral_medico as 
select * from tbl_medico;

select * from listagem_geral_medico
where cod_medico=1;