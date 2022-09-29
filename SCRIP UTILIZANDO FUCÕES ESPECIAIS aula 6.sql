use cursos_sql;

SELECT * FROM funcionarios;

SELECT COUNT(*) FROM funcionarios;
SELECT COUNT(*) FROM funcionarios where salario > 4300;
SELECT COUNT(*) FROM funcionarios where salario > 4300 AND departamento = 'TI';

SELECT * FROM funcionarios where salario > 4300 AND departamento = 'TI';

SELECT sum(salario) FROM funcionarios;
SELECT sum(salario) FROM funcionarios where departamento = 'TI';

SELECT avg(salario) FROM funcionarios;
SELECT avg(salario) FROM funcionarios where departamento = 'TI';
SELECT avg(salario) FROM funcionarios where departamento = 'Juridico';

SELECT max(salario) FROM funcionarios;
SELECT max(salario) FROM funcionarios where departamento = 'TI';

SELECT min(salario) FROM funcionarios;
SELECT min(salario) FROM funcionarios where departamento = 'Juridico';

SELECT departamento FROM funcionarios;
SELECT distinct(departamento) FROM funcionarios;

SELECT * FROM funcionarios order by nome;
SELECT * FROM funcionarios order by nome DESC;
SELECT * FROM funcionarios order by departamento DESC , salario DESC;

SELECT * FROM funcionarios;
SELECT * FROM funcionarios LIMIT 2 offset 1;
SELECT * FROM funcionarios LIMIT 1, 2;

SELECT departamento, avg(salario) from funcionarios group by departamento;
SELECT departamento, avg(salario) from funcionarios group by departamento having avg(salario) >4000;

SELECT departamento, count(*) from funcionarios group by departamento;

SELECT departamento, avg(salario) from funcionarios group by departamento;
SELECT nome FROM funcionarios where  departamento = 'Juridico';

SELECT nome FROM funcionarios where departamento 
in (SELECT departamento from funcionarios group by departamento having avg(salario) > 4000);





