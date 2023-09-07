

-- Criando o Usu�rio

/*
 No Oracle SQL Developer conecte-se como usu�rio SYS utilizando a sua conex�o para o usu�rio SYS
 Abra este script no Oracle SQL Developer e execute (F5)
/*

/*
  Configura a sess�o para o pluggable database XEPDB1
*/

ALTER SESSION SET CONTAINER = XEPDB1;

/*
  Remove a conta do usu�rio HR e remove todos os seus objetos em cascata
*/
DROP USER ALURA CASCADE;

/*
  Cria a conta do usu�rio HR com a senha hr e concede os privil�gios
*/

CREATE USER ALURA 
IDENTIFIED BY alura
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE TEMP
QUOTA unlimited on users
QUOTA 0 on system;

GRANT CONNECT, RESOURCE TO ALURA;

GRANT CREATE SESSION, CREATE VIEW, CREATE TABLE, ALTER SESSION, CREATE SEQUENCE, CREATE PROCEDURE, CREATE TRIGGER TO ALURA;
GRANT CREATE SYNONYM, CREATE DATABASE LINK, UNLIMITED TABLESPACE TO ALURA;