
/*CREATE USER 'nome do usuário'@'local'  identified by 'juju123456';*/
/*Acesso somente com IP fixo da maquina mesmo digitando a senha em outra maquina na terá o acesso*/
/*CREATE USER 'juliana'@'200.200.190.189'  identified by 'juju123456';*/



/*Acesso somente na maquina local, ser tentar entrar em outra maquina mesmo digitando a senha não estará liberada*/
CREATE USER 'juliana'@'localhost'  identified by 'juju123456';
grant all on cursos_sql. * TO 'juliana'@'localhost';

/*Acesso para todos os IPs da maquinas digitando a senha corretamente terá a liberação com 
o select ele tera permissão só de ler dados*/
CREATE USER 'juliana'@'%'  identified by 'julianaviagem123456';
grant SELECT on cursos_sql. * TO 'juliana'@'%';

/*grant INSERT on cursos_sql. * TO 'juliana'@'%';*/
grant INSERT on cursos_sql.funcionarios TO 'juliana'@'%';

/*Removerá o acesso, conclui que não obterá mais o acessso a inserir dados dessa tabela*/
revoke INSERT ON cursos_sql.funcionarios FROM 'juliana'@'%';

grant SELECT on cursos_sql.funcionarios TO 'juliana'@'%';
grant SELECT on cursos_sql.veiculos TO 'juliana'@'%';

revoke SELECT ON cursos_sql.funcionarios FROM 'juliana'@'%';
revoke SELECT on cursos_sql.veiculos FROM 'juliana'@'%';

revoke ALL ON cursos_sql.* from 'juliana'@'localhost';

DROP USER 'juliana'@'%';
DROP USER 'juliana'@'localhost';


SELECT USER FROM mysql.user;
SHOW grants for 'juliana'@'%';




