--CREATE
CREATE TABLE doador(
	cpf 		   VARCHAR(11)  PRIMARY KEY,
	nome 		   VARCHAR(255) NOT NULL,
	idade 		   INTEGER 		NOT NULL,
	email 		   VARCHAR(100),
	logradouro 	   VARCHAR(100) NOT NULL,
	numero 		   INTEGER,
	bairro 		   VARCHAR(100) NOT NULL,
	cidade 		   VARCHAR(100) NOT NULL,
	cep 		   VARCHAR(20)  NOT NULL,
	tipo_sanguineo CHAR(4)      NOT NULL
);

CREATE TABLE telefone_doador(
	cpf    VARCHAR(11) REFERENCES doador(cpf),
	numero VARCHAR(20),
	PRIMARY KEY (cpf, numero)
);

CREATE TABLE funcionario (
	codigo INTEGER PRIMARY KEY,
	nome   VARCHAR(255) NOT NULL,
	CRM    VARCHAR (100),
	COREN  VARCHAR (100)
);

CREATE TABLE atende(
	codigo_fun INTEGER REFERENCES funcionario(codigo),
	cpf        VARCHAR(11) REFERENCES doador(cpf)
	PRIMARY KEY (codigo_fun,cpf)
);

CREATE TABLE hospital(
	cnpj      	   VARCHAR(50) PRIMARY KEY,
	email     	   VARCHAR(100),
	nome  		   VARCHAR(255) NOT NULL,
	logradouro 	   VARCHAR(100) NOT NULL,
	numero 		   INTEGER,
	bairro 		   VARCHAR(100) NOT NULL,
	cidade 		   VARCHAR(100) NOT NULL,
	cep 		   VARCHAR(20) NOT NULL,
	tipo_sanguineo CHAR(4) NOT NULL
);

CREATE TABLE telefone_hospital(
	cnpj_hospital VARCHAR(50) REFERENCES hospital(cnpj),
	numero 		  VARCHAR(20),
	PRIMARY KEY (cnpj_hospital, numero)
);

CREATE TABLE ponto_de_coleta(
	cnpj       VARCHAR(50) PRIMARY KEY,
	email      VARCHAR(100),
	nome 	   VARCHAR(255) NOT NULL,
	segmento   VARCHAR(100) NOT NULL,
	logradouro VARCHAR(100) NOT NULL,
	numero 	   INTEGER,
	bairro     VARCHAR(100) NOT NULL,
	cidade     VARCHAR(100) NOT NULL,
	cep        VARCHAR(20)  NOT NULL
);

CREATE TABLE telefone_ponto_de_coleta(
	cnpj_coleta VARCHAR(50) REFERENCES ponto_de_coleta(cnpj),
	numero      VARCHAR(20),
	PRIMARY KEY(cnpj_coleta, numero)
);

CREATE TABLE bolsa_de_sangue(
	codigo INTEGER PRIMARY KEY,
	cpf    VARCHAR (11) REFERENCES doador(cpf),
	data   DATE,
	cnpj   VARCHAR(50) REFERENCES ponto_de_coleta(cnpj)
);

CREATE TABLE recebe(
	cnpj_hospital VARCHAR(50) REFERENCES hospital(cnpj),
	codigo_bolsa  INTEGER REFERENCES bolsa_de_sangue(codigo),
	data DATE,
	hora TIME
	PRIMARY KEY(cnpj_hospital,codigo_bolsa)
);


--READ
SELECT * FROM doador;
SELECT * FROM telefone_doador;
SELECT * FROM bolsa_de_sangue;
SELECT * FROM hospital;
SELECT * FROM telefone_hospital;
SELECT * FROM recebe;
SELECT * FROM ponto_de_coleta;
SELECT * FROM telefone_ponto_de_coleta;
SELECT * FROM funcionario;
SELECT * FROM atende;






