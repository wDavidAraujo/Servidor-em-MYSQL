 -- CRIANDO A TEBELA
 create table cliente(
	nome VARCHAR(30),
	sexo CHAR(1),
	email VARCHAR(30),
	cpf INT(11),
	telefone VARCHAR(30),
	endereco VARCHAR(100)

);

-- DESCREVENDO TABELA QUE ACABOU DE SER CRIADA
DESC cliente;

-- INSERINDO INFORMAÇÃO NA TABELA (DUAS FORMAS DIFERENTES)
INSERT INTO CLIENTE VALUES('JOAO','M','JOAO@GMAIL.COM',62315567,'085988776655','MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ');
INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('LILIAN','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','947785696',887774856);

-- ESCOLHER SEMPRE A FORMA MAIS SIMPLES DE FAZER A QUERY PARA FACILITAR O ENTENDIMENTO E PROCESSAMENTO DO NOSSO SERVIDOR.
INSERT INTO LIVROS VALUES('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ',2009);
INSERT INTO LIVROS VALUES('SQL para leigos','João Nunes','M',450,'Addison',98,'SP',2018);
INSERT INTO LIVROS VALUES('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ',2008);
INSERT INTO LIVROS VALUES('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78,'RJ',2018);
INSERT INTO LIVROS VALUES('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150,'RJ',2019);
INSERT INTO LIVROS VALUES('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016);
INSERT INTO LIVROS VALUES('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',2015);
INSERT INTO LIVROS VALUES('Pra sempre amigas','Leda Silva','F',510,'Insignia',78,'ES',2011);
INSERT INTO LIVROS VALUES('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130,'RS',2018);
INSERT INTO LIVROS VALUES('O poder da mente','Clara Mafra','F',120,'Continental',56,'SP',2017);

-- MOSTRANDO NA TELA AS INFORMAÇÕES QUE FORAM INSERIDAS NA TABELA (COM E SEM FILTRO)
select nome as cliente, sexo, email from cliente;

select nome, sexo from cliente
where sexo = 'm';

select nome, sexo from cliente
where endereco like '%RJ';

select nome, sexo from cliente
where endereco like 'MAIA LACERDA%';

-- FILTROS UTILIZANDO O 'AND' E 'OR'
/* Trazendo os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro.*/

SELECT AUTOR, SEXO, UF
FROM LIVROS
WHERE SEXO = 'M'
AND UF = 'SP'
OR UF = 'RJ';

SELECT AUTOR, SEXO, UF
FROM LIVROS
WHERE 
SEXO = 'M' AND (UF = 'SP' OR UF = 'RJ');

SELECT AUTOR, SEXO, UF
FROM LIVROS
WHERE SEXO = 'M'
AND UF = 'SP'
AND paginas > 100;