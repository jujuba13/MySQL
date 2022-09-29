USE cursos_sql;

SELECT * FROM funcionarios;
SELECT * FROM veiculos;

SELECT * FROM funcionarios INNER JOIN veiculos ON funcionario_id = funcionarios.id;
SELECT * FROM funcionarios f INNER JOIN veiculos v ON v.funcionario_id = f.id;

SELECT * FROM funcionarios f left JOIN veiculos v ON v.funcionario_id = f.id;
SELECT * FROM funcionarios f right JOIN veiculos v ON v.funcionario_id = f.id;

SELECT * FROM funcionarios f left JOIN veiculos v ON v.funcionario_id = f.id
UNION
SELECT * FROM funcionarios f right JOIN veiculos v ON v.funcionario_id = f.id;

INSERT INTO veiculos (funcionario_id, veiculo, placa) values (null, "MOTO", 'GHM-9034' );

CREATE TABLE cpfs
(
id int unsigned not null,
cpf varchar(14) not null,
PRIMARY KEY (id),
constraint fk_cpf foreign key (id) references funcionarios (id)
);


INSERT INTO cpfs (id, cpf) values (6 ,"484.444.444-89");
INSERT INTO cpfs (id, cpf) values (3 , "231,543.890-12");
INSERT INTO cpfs (id, cpf) values (4 ,"543.765.097-23");
INSERT INTO cpfs (id, cpf) values (5 ,"678.789.235-45");
INSERT INTO cpfs (id, cpf) values (2 ,"444.444.444-89");

SELECT * FROM cpfs;

SELECT * FROM funcionarios INNER JOIN cpfs on  funcionarios.id = cpfs.id;
SELECT * FROM funcionarios INNER JOIN cpfs using (id); 

CREATE TABLE clientes
(
id int unsigned not null auto_increment,
nome varchar(50) not null,
quem_indicou int unsigned,
primary key (id),
constraint FK_quem_indicou foreign key (quem_indicou) references clientes (id)
);

INSERT INTO clientes (id, nome, quem_indicou) values (6, 'Luna Venceslau', NULL );
INSERT INTO clientes (id, nome, quem_indicou) values (7,'Aylla França', 6);
INSERT INTO clientes (id, nome, quem_indicou) values (8,'Airon Souza', 7);
INSERT INTO clientes (id, nome, quem_indicou) values (9,'Kael de Burqueque',8);
INSERT INTO clientes (id, nome, quem_indicou) values (10,'Charllot Franca', NULL);

SELECT * FROM clientes;

SELECT a.nome AS CLIENTE, b.nome  AS 'QUEM INDICOU' FROM clientes a join clientes b ON a.quem_indicou = b.id;

SELECT * FROM funcionarios
 INNER JOIN veiculos ON veiculos.funcionario_id = funcionarios.id
inner join cpfs ON cpfs.id = funcionarios.id;

CREATE view funcionario_da_empresa AS SELECT * FROM funcionarios where salario >= 4300;
SELECT * FROM funcionario_da_empresa;

update funcionarios SET  salario = 4700 WHERE id = 3;






