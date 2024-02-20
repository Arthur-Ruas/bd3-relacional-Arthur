drop database centro_cirurgico_bd;

create database centro_cirurgico_bd;
use centro_cirurgico_bd;

#unsigned proibe número negativos

create table tbl_especialidade(
    cod_especialidade   	int unsigned auto_increment,
    nome_especialidade  	varchar(100),

    constraint pk_especialidade primary key (cod_especialidade)
);

create table tbl_medico(
    cod_medico          	int unsigned auto_increment,
    cod_especialidade   	int unsigned not null,
    nome_medico         	varchar(500),
    email_medico        	varchar(100),
    telefone_medico     	varchar(10),
    celular_medico      	varchar(11),

    constraint pk_medico primary key (cod_medico),
    constraint fk_especialidade foreign key (cod_especialidade) references tbl_especialidade (cod_especialidade)
);

create table tbl_sala(
	cod_sala			int unsigned auto_increment,
    numero_sala			varchar(10),
    cod_especialidade	int unsigned not null,
    
    constraint pk_sala primary key (cod_sala),
    constraint fk_especialidade_sala foreign key (cod_especialidade) references tbl_especialidade (cod_especialidade)
);

create table tbl_paciente(
	cod_paciente			int unsigned auto_increment,
    nome_paciente			varchar(500) not null,
    telefone_paciente		varchar(10),
    celular_paciente		varchar(11) not null,
    email_paciente			varchar(500) not null,
    nome_responsavel		varchar(500) not null,
    telefone_responsavel	varchar(11) not null,
    
    constraint pk_paciente primary key (cod_paciente)
);

create table tbl_insumos(
	cod_insumos				int unsigned auto_increment,
    cod_paciente			int unsigned not null,
	nome_insumo				varchar(100),
    quantidade_insumo		decimal(10,2),
    
	constraint pk_insumo primary key (cod_insumos),
    constraint fk_paciente foreign key (cod_paciente) references tbl_paciente (cod_paciente)
);

create table tbl_agenda(
	cod_agenda				int unsigned auto_increment,
    cod_sala				int unsigned not null,
    cod_medico				int unsigned not null,
    cod_paciente			int unsigned not null,
    
    data_cirurgia			varchar(10) not null,
    status_cirurgia			enum('Agendado', 'Concluido', 'Cancelado'),
    
    constraint pk_agenda primary key (cod_agenda),
    constraint fk_sala_agenda foreign key (cod_sala) references tbl_sala (cod_sala),
    constraint fk_medico_agenda foreign key (cod_medico) references tbl_medico (cod_medico),
    constraint fk_paciente_agenda foreign key (cod_paciente) references tbl_paciente (cod_paciente)
);


