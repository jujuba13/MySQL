use cursos_sql;

CREATE TABLE pedidos
(
id int unsigned not null auto_increment,
descricão_pedido varchar(100) not null,
valor double not null default '0',
pago varchar(3) not null default'NÃO',
PRIMARY KEY (id)
);

INSERT INTO pedidos (descricão_pedido, valor) values ('TV', 2400);
INSERT INTO pedidos (descricão_pedido, valor) values ('SOFÁ', 3000);
INSERT INTO pedidos (descricão_pedido, valor) values ('MESA DE JANTAR', 3200);

SELECT * FROM pedidos;
CALL limpa_pedidos();

CREATE TABLE estoque
(
id int unsigned not null auto_increment,
descricão_produto varchar(50) not null,
quantidade_produto int not null,
PRIMARY KEY (id)
);

CREATE TRIGGER gatilho_limpa_pedidos
BEFORE INSERT ON estoque FOR EACH ROW CALL limpa_pedidos();

INSERT INTO pedidos (descricão_pedido, valor) values ('TV', 2400);
INSERT INTO pedidos (descricão_pedido, valor) values ('SOFÁ', 3000);
INSERT INTO pedidos (descricão_pedido, valor) values ('MESA DE JANTAR', 3200);

SELECT * FROM pedidos;
UPDATE pedidos SET pago = 'SIM' WHERE id= 5;

SELECT * FROM pedidos;

SELECT * FROM estoque;

INSERT INTO estoque(descricão_produto, quantidade_produto) values('Geladeira', 5);















