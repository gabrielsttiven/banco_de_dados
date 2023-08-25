CREATE DATABASE Livraria;

SHOW DATABASES;

USE Livraria;

CREATE TABLE Livraria.Biblioteca(
  Id INT AUTO_INCREMENT,
  Livro VARCHAR (200) NOT NULL,
  Autor VARCHAR (200) NOT NULL,
  Sexo_Autor ENUM ('Feminino', 'Masculino') NOT NULL,
  Numero_Paginas INT NOT NULL,
  Editora VARCHAR (50) NOT NULL,
  Capa_Comum_Valor FLOAT NOT NULL,
  Kindle_Valor FLOAT NOT NULL,
  Ano_Publicacao INT NOT NULL,
  PRIMARY KEY (Id)
);

DROP TABLE Livraria.Biblioteca;

-- 1
INSERT INTO Livraria.Biblioteca (Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Capa_Comum_Valor, Kindle_Valor, Ano_Publicacao)
VALUES ('Pai Rico, Pai Pobre', 'Robert T. Klyosaki', 'Masculino', "336", 'Alta Books', 61.53, 58.45, '2018');

SELECT * FROM Livraria.Biblioteca;

-- 2 
INSERT INTO Livraria.Biblioteca (Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Capa_Comum_Valor, Kindle_Valor, Ano_Publicacao)
VALUES ('Mindset', 'Carol S. Dwerk', 'Feminino', "312", 'Objetiva', 38.99, 14.95, '2017');

-- 3
INSERT INTO Livraria.Biblioteca (Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Capa_Comum_Valor, Kindle_Valor, Ano_Publicacao)
VALUES ('Como fazer amigos e influenciar pessoas', 'Dale Carnegie', 'Masculino', "256", 'Sextante', 38.99, 33.24, '2019');

-- 4
INSERT INTO Livraria.Biblioteca (Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Capa_Comum_Valor, Kindle_Valor, Ano_Publicacao)
VALUES ('A Cabana', 'William P. Young', 'Masculino', "240", 'Arqueiro', 35.99, 17.90, '2008');

-- 5
INSERT INTO Livraria.Biblioteca (Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Capa_Comum_Valor, Kindle_Valor, Ano_Publicacao)
VALUES ('O Poder do Hábito', 'Charles Duhigg', 'Masculino', "408", 'Objetiva', 42.99, 29.90, '2012');

-- 6
INSERT INTO Livraria.Biblioteca (Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Capa_Comum_Valor, Kindle_Valor, Ano_Publicacao)
VALUES ('Código Limpo', 'Robert C. Martin', 'Masculino', "425", 'Alta Books', 91.99, 87.39, '2009');

-- 7
INSERT INTO Livraria.Biblioteca (Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Capa_Comum_Valor, Kindle_Valor, Ano_Publicacao)
VALUES ('Essencialismo', 'Greg McKeown', 'Masculino', "272", 'Sextante', 53.58, 33.24, '2015');

-- 8
INSERT INTO Livraria.Biblioteca (Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Capa_Comum_Valor, Kindle_Valor, Ano_Publicacao)
VALUES ('Me Poupe!', 'Nathalia Arcuri', 'Feminino', "176", 'Sextante', 32.86, 17.09, '2018');

-- 9
INSERT INTO Livraria.Biblioteca (Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Capa_Comum_Valor, Kindle_Valor, Ano_Publicacao)
VALUES ('Comece pelo Porquê', 'Simon Sinek', 'Masculino', "256", 'Sextante', 50.58, 24.90, '2018');

-- 10
INSERT INTO Livraria.Biblioteca (Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Capa_Comum_Valor, Kindle_Valor, Ano_Publicacao)
VALUES ('O Alquimista', 'Paulo Coelho', 'Masculino', "206", 'Paralela', 24.70, 14.70, '2017');

-- ATIVIDADE NOVA:

-- 1º Trazer todos os dados
SELECT *
FROM Livraria.Biblioteca;

-- 2º Trazer o nome do livro e nome da editora;
SELECT Livro, Editora
FROM Livraria.Biblioteca;

-- 3º Trazer o nome do livro, editora e autores do sexo masculino
SELECT Livro, Editora, Autor
FROM Livraria.Biblioteca
WHERE Sexo_Autor = 'Masculino';

-- 4º Trazer o nome do livro, número de páginas do livro e autores do sexo feminino;
SELECT Livro, Numero_Paginas, Autor
FROM Livraria.Biblioteca
WHERE Sexo_Autor = 'Feminino';

-- 5º Trazer o nome do autor, editora e ano de publicação dos livros que tenham sido publicados a partir do ano 2017;
SELECT Autor, Editora, Ano_Publicacao
FROM Livraria.Biblioteca
WHERE Ano_Publicacao >= 2017;

-- 6º Trazer o nome dos autores do sexo masculino com livros publicados pela editora Sextante ou pela editora Alta Books;
SELECT Autor, Editora
FROM Livraria.Biblioteca
WHERE Sexo_Autor = 'Masculino' AND Editora = 'Sextante' OR Editora = 'Alta Books';

-- 7º Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum;
SELECT Livro, Autor, Numero_Paginas, Editora, Ano_Publicacao, Capa_Comum_Valor
FROM Livraria.Biblioteca;

-- 8º Trazer o nome do livro, autor, número de páginas e valor no Kindle;
SELECT Livro, Autor, Numero_Paginas, Kindle_Valor
FROM Livraria.Biblioteca;

-- 9º Trazer o nome dos autores com livros publicados pela editora Sextante;
SELECT Autor, Editora
FROM Livraria.Biblioteca
WHERE Editora = 'Sextante';

-- 10º  Trazer o nome do livro, autores, valor com capa comum e valor no Kindle
SELECT Livro, Autor, Capa_Comum_Valor, Kindle_Valor
FROM Livraria.Biblioteca;