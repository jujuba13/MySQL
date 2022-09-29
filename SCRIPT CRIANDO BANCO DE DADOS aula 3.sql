CREATE DATABASE cursos_sql;

USE cursos_sql;

CREATE TABLE funcionarios
(

nome varchar(45) not null,
salario double not null default'0',
departamento varchar(45) not null,
PRIMARY KEY (id) 
);

CREATE TABLE veiculos
(
id int unsigned not null auto_increment,
funcionario_id int unsigned default null,
veiculo varchar(45) not null default '',
placa varchar(10) not null default '',
PRIMARY KEY (id),
constraint FK_VEICULOS_FUNCIONARIOS  foreign key (funcionario_id) references funcionarios (id)
);

CREATE TABLE salario
(
faixa_salarial varchar(45) not null,
salario_inicial double not null,
valor_maximo_salario double not null,
PRIMARY KEY (faixa_salarial)
);

ALTER TABLE funcionarios CHANGE COLUMN nome nome_funcionario varchar(50) not null;
ALTER TABLE funcionarios CHANGE COLUMN nome_funcionario nome varchar(50) not null;

CREATE INDEX departamentos on funcionarios (departamento);
CREATE INDEX nomes on funcionarios (nome(20));








