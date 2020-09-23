--- RUN AFTER CONTAINER INIT WITH:
--- docker exec -it cashback-db /bin/bash 
--- sqlplus system/Oradoc_db1@ORCLPDB1 @/docker-entrypoint-initdb.d/ora-init.sql
--- exit && exit
--- CASHBACK USER
CREATE USER CASHBACK IDENTIFIED BY pwd4cashback;
GRANT CONNECT, RESOURCE, DBA TO CASHBACK;
GRANT CREATE SESSION TO CASHBACK;
GRANT ALL PRIVILEGES TO CASHBACK;
GRANT UNLIMITED TABLESPACE TO CASHBACK;

--- CASHBACK TABLE DATA
CREATE TABLE CASHBACK.EXTRATO (
	ID_EXTRATO NUMBER GENERATED BY DEFAULT AS IDENTITY,
	DESCRICAO NVARCHAR2(100) NOT NULL,
	PRIMARY KEY(ID_EXTRATO)
);

INSERT INTO CASHBACK.EXTRATO (DESCRICAO) VALUES ('Amazon');
INSERT INTO CASHBACK.EXTRATO (DESCRICAO) VALUES ('Fasthop');
INSERT INTO CASHBACK.EXTRATO (DESCRICAO) VALUES ('Submarino');

SELECT * FROM CASHBACK.EXTRATO;