drop database if exists `almacenamientobd`;
create database `almacenamientobd`;

grant select, insert, update, delete on `Getting-Started`.*to'acme-user'@'%';
grant select, insert, update, delete, create, drop, references, index, alter,
 create temporary tables, lock tables, create view, create routine,
 alter routine, execute, trigger, show view
 on `almacenamientobd`.* to 'acme-manager'@'%';