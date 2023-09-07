

-- Criando o Usuário

/*
 No Oracle SQL Developer conecte-se como usuário SYS utilizando a sua conexão para o usuário SYS
 Abra este script no Oracle SQL Developer e execute (F5)
/*

/*
  Configura a sessão para o pluggable database XEPDB1
*/

ALTER SESSION SET CONTAINER = XEPDB1;

/*
  Remove a conta do usuário HR e remove todos os seus objetos em cascata
*/
DROP USER ALURA CASCADE;

/*
  Cria a conta do usuário HR com a senha hr e concede os privilégios
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