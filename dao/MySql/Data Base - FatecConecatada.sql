CREATE DATABASE fatecconectada;
USE fatecconectada;

CREATE TABLE USUARIO(
	USU_ID INT AUTO_INCREMENT PRIMARY KEY,
	USU_NOME VARCHAR(120),
	USU_EMAIL VARCHAR(60),
	USU_SENHA VARCHAR(12),
	USU_TIPO VARCHAR(15)
);

CREATE TABLE OPORTUNIDADE(
	OPORTU_ID INT AUTO_INCREMENT PRIMARY KEY,
	OPORTU_EMPRESA VARCHAR(30),
	OPORTU_TITULO VARCHAR(60),
	OPORTU_DESCRICAO VARCHAR(400),
	OPORTU_SALARIO VARCHAR(8),
	OPORTU_TIPO VARCHAR(10)
);

CREATE TABLE ATIVIDADE(
	ATIVI_ID INT AUTO_INCREMENT PRIMARY KEY,
	ATIVI_TIPO VARCHAR(25),
	ATIVI_DESCRICAO VARCHAR(400),
	ATIVI_DATA_ENTREGA VARCHAR(10),
	ATIVI_NOTA VARCHAR(4),
	ATIVI_FK_PROFESSOR INT
);
ALTER TABLE ATIVIDADE ADD CONSTRAINT ATIVI_FK_PROFESSOR FOREIGN KEY (ATIVI_FK_PROFESSOR) REFERENCES USUARIO (USU_ID) ON UPDATE CASCADE ON DELETE CASCADE;




INSERT INTO USUARIO(USU_NOME, USU_EMAIL, USU_SENHA, USU_TIPO) VALUES ('Gustavo Administrador do Sistema', 'admin@admin', '123', 'Coordenador');
INSERT INTO USUARIO(USU_NOME, USU_EMAIL, USU_SENHA, USU_TIPO) VALUES ('Geraldo Gomes', 'geraldo@gmail.com', 'geraldo', 'Professor');
INSERT INTO USUARIO(USU_NOME, USU_EMAIL, USU_SENHA, USU_TIPO) VALUES ('Verissimo Crescencio', 'professor@professor', '123', 'Professor');
INSERT INTO USUARIO(USU_NOME, USU_EMAIL, USU_SENHA, USU_TIPO) VALUES ('Gustavo Guanabara', 'aluno@aluno', '123', 'Aluno');
INSERT INTO USUARIO(USU_NOME, USU_EMAIL, USU_SENHA, USU_TIPO) VALUES ('José da Silva', 'jose@hotmail.com', 'jose', 'Aluno');

INSERT INTO ATIVIDADE(ATIVI_TIPO, ATIVI_DESCRICAO, ATIVI_DATA_ENTREGA, ATIVI_NOTA, ATIVI_FK_PROFESSOR) VALUES ('Projeto', 'Desenolver um Aplicativo para Faculdade', '12/12/2017', '10', 2);
INSERT INTO ATIVIDADE(ATIVI_TIPO, ATIVI_DESCRICAO, ATIVI_DATA_ENTREGA, ATIVI_NOTA, ATIVI_FK_PROFESSOR) VALUES ('Lista de Exercicio', 'Lista Automatos', '23/11/2017', '3', 2);
INSERT INTO ATIVIDADE(ATIVI_TIPO, ATIVI_DESCRICAO, ATIVI_DATA_ENTREGA, ATIVI_NOTA, ATIVI_FK_PROFESSOR) VALUES ('Lista de Exercicio', 'Lista 01', '30/04/2017', '0,5', 3);
INSERT INTO ATIVIDADE(ATIVI_TIPO, ATIVI_DESCRICAO, ATIVI_DATA_ENTREGA, ATIVI_NOTA, ATIVI_FK_PROFESSOR) VALUES ('Artigo', 'Pesquisar sobre Cloud', '10/08/2017', '5', 3);
INSERT INTO ATIVIDADE(ATIVI_TIPO, ATIVI_DESCRICAO, ATIVI_DATA_ENTREGA, ATIVI_NOTA, ATIVI_FK_PROFESSOR) VALUES ('Pre-Projeto', 'Apresentação sobre Camada OSI', '07/08/2017', '5', 3);

INSERT INTO OPORTUNIDADE(OPORTU_EMPRESA, OPORTU_TITULO, OPORTU_DESCRICAO, OPORTU_SALARIO, OPORTU_TIPO) VALUES ('Accenture', 'Desenvolvedor Cobol', 'Vaga para Desenvolvedor Cobol, com 30 anos de experiencia e 20 de idade.', '320,00', 'Estágio');
INSERT INTO OPORTUNIDADE(OPORTU_EMPRESA, OPORTU_TITULO, OPORTU_DESCRICAO, OPORTU_SALARIO, OPORTU_TIPO) VALUES ('Pitang', 'Desenvolvedor Java (Web, Desktop e Mobile)', 'Vaga para Desenvolvedor Java.', '1206,84', 'Emprego');
INSERT INTO OPORTUNIDADE(OPORTU_EMPRESA, OPORTU_TITULO, OPORTU_DESCRICAO, OPORTU_SALARIO, OPORTU_TIPO) VALUES ('Accenture', 'Vaga - DBA', 'Experiencia com MySql, Cloud e ferremanetas de metodos ageis.', '1145,27', 'Emprego');