USE cursos_sql;

/*traz mecanismo de armazenamento que a sql oferece*/
SHOW ENGINES;

CREATE TABLE contas_bancarias
(
id int unsigned not null auto_increment,
titular_conta varchar(45) not null,
saldo_conta double not null,
PRIMARY KEY (id)
)engine = InnoDB;

INSERT INTO contas_bancarias(titular_conta, saldo_conta) values ('Juliana França', '2000');
INSERT INTO contas_bancarias(titular_conta, saldo_conta) values ('Rodrigo Venceslau', '4000');
INSERT INTO contas_bancarias(titular_conta, saldo_conta) values ('Rosa Maria', '1500');
INSERT INTO contas_bancarias(titular_conta, saldo_conta) values ('Mario Francisco', '3200');

SELECT * FROM contas_bancarias;

start transaction;
UPDATE contas_bancarias SET saldo_conta = saldo_conta -100 where id = 1;
UPDATE contas_bancarias SET saldo_conta = saldo_conta +100 where id = 2;
rollback;

start transaction;
UPDATE contas_bancarias SET saldo_conta = saldo_conta -100 where id = 1;
UPDATE contas_bancarias SET saldo_conta = saldo_conta +100 where id = 2;
commit;

