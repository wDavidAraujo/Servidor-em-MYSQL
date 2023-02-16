-- CRIANDO A DATABESE
CREATE DATABASE LIVRARIA;

 -- CRIANDO A TEBELA
CREATE TABLE LIVROS(
		LIVRO VARCHAR(100),
		AUTOR VARCHAR(100),
		SEXO CHAR(1),
		PAGINAS INT(5),
		EDITORA VARCHAR(30),
		VALOR FLOAT(10,2),
		UF CHAR(2),
		ANO INT(4)
	);
	
/* primeria forma de mostrar informações */
select * from livros;

/* segunda forma de mostrar informações */
select livro, editora from livros;

/* terceira forma de mostrar informações (filtrando)*/
select livro, uf from livros
where sexo = 'm';

/* quarta forma de mostrar informações (filtrando)*/
select livro, paginas from livros
where sexo = 'f';

/* quinta forma de mostrar informações (filtrando)*/
SELECT livro, valor from livros
where UF = 'SP';

/* sexta forma de mostrar informações (filtrando)*/
SELECT AUTOR, SEXO
FROM LIVROS
WHERE 
SEXO = 'M' AND (UF = 'SP' OR UF = 'RJ');