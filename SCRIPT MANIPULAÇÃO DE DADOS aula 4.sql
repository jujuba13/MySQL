USE cursos_sql;

INSERT INTO funcionarios (id, nome, salario, departamento) VALUE (1, 'Juliana França', 3000,'TI');
INSERT INTO funcionarios (id, nome, salario, departamento) VALUE (2, 'Rodrigo Venceslau', 4000,'Juridico');
INSERT INTO funcionarios ( nome, salario, departamento) VALUE ( 'Izabela Fonseca', 3200,'TI');
INSERT INTO funcionarios ( nome, salario, departamento) VALUE ( 'Ravi Bernardo', 3400,'TI');


SELECT * FROM funcionarios;

SELECT * FROM funcionarios where salario > 3200;
SELECT * FROM funcionarios where nome = 'Juliana França';
SELECT * FROM funcionarios where id = 2;

UPDATE funcionarios SET salario = salario * 1.1 WHERE id = 1;

SET SQL_SAFE_UPDATES = 0;
UPDATE funcionarios SET salario = salario * 1.1;

UPDATE funcionarios SET salario = round(salario * 1.1, 2);

DELETE FROM funcionarios WHERE id = 1;

INSERT INTO veiculos (funcionario_id, veiculo, placa) values (2, 'CARRO', 'SPO-9305');
INSERT INTO veiculos (funcionario_id, veiculo, placa) values (3, 'MOTO', 'BHJ-5458');

SELECT * FROM veiculos;

UPDATE veiculos SET funcionario_id = 4 where id= 2;

INSERT INTO salario (faixa_salarial, salario_inicial, valor_maximo_salario) values ('ANALISTA JR' , 2000, 4000); 
INSERT INTO salario (faixa_salarial, salario_inicial, valor_maximo_salario) values ('ANALISTA PLENO' , 5000, 6800); 
INSERT INTO salario (faixa_salarial, salario_inicial, valor_maximo_salario) values ('ANALISTA SENIOR' , 7000, 9140); 

SELECT * FROM salario;

SELECT nome AS 'Funcionário', salario FROM funcionarios f WHERE f.salario > 3000;

SELECT * FROM funcionarios where nome = 'Rodrigo Venceslau'
UNION
SELECT * FROM funcionarios where id = 4;
