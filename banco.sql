/* ========================= */
/* CRIAÇÃO DO BANCO DE DADOS */
/* ========================= */

CREATE DATABASE projeto_antirracista;

USE projeto_antirracista;


/* ========================= */
/* TABELA DOS INTEGRANTES */
/* ========================= */

CREATE TABLE integrantes (

    id INT AUTO_INCREMENT PRIMARY KEY,

    nome VARCHAR(100) NOT NULL,

    funcao VARCHAR(100) NOT NULL,

    idade INT

);


/* INTEGRANTES */

INSERT INTO integrantes (nome, funcao, idade)
VALUES

('Lucas Mendes', 'Desenvolvedor', 16),

('Kaique Souto', 'Pesquisador', 16),

('Natacha Lima', 'Redatora', 16),

('Gabrielly Menezes', 'Pesquisadora', 16),

('Eduardo Moreira', 'Pesquisador', 16),

('Kizzy Souza', 'Pesquisadora', 16);


/* ========================= */
/* TABELA DE CONTATO */
/* ========================= */

CREATE TABLE contato (

    id INT AUTO_INCREMENT PRIMARY KEY,

    nome VARCHAR(100) NOT NULL,

    email VARCHAR(150) NOT NULL,

    mensagem TEXT NOT NULL,

    data_envio DATETIME

);


/* EXEMPLOS */

INSERT INTO contato (nome, email, mensagem, data_envio)
VALUES

(

    'Lucas Mendes',

    'lucas@gmail.com',

    'Gostei bastante do projeto.',

    NOW()

),

(

    'Kaique Souto',

    'kaique@gmail.com',

    'Parabéns pelo documentário.',

    NOW()

);


/* ========================= */
/* TABELA DE COMENTÁRIOS */
/* ========================= */

CREATE TABLE comentarios (

    id INT AUTO_INCREMENT PRIMARY KEY,

    nome VARCHAR(100) NOT NULL,

    comentario TEXT NOT NULL,

    data_comentario DATETIME

);


/* EXEMPLOS */

INSERT INTO comentarios (nome, comentario, data_comentario)
VALUES

(

    'Natacha Lima',

    'Projeto muito importante para a comunidade.',

    NOW()

),

(

    'Eduardo Moreira',

    'Excelente iniciativa.',

    NOW()

);


/* ========================= */
/* TABELA DE RESULTADOS */
/* ========================= */

CREATE TABLE resultados (

    id INT AUTO_INCREMENT PRIMARY KEY,

    pergunta VARCHAR(255) NOT NULL,

    quantidade_respostas INT NOT NULL

);


/* RESULTADOS DA PESQUISA */

INSERT INTO resultados (pergunta, quantidade_respostas)
VALUES

('Conhece a Lei 10.639/03?', 45),

('Já sofreu preconceito racial?', 18),

('Considera importante a educação antirracista?', 52),

('Acredita que a escola deve abordar esse tema?', 60);


/* ========================= */
/* CONSULTAS */
/* ========================= */

/* LISTAR TODOS OS INTEGRANTES */

SELECT * FROM integrantes;


/* LISTAR TODOS OS CONTATOS */

SELECT * FROM contato;


/* LISTAR TODOS OS COMENTÁRIOS */

SELECT * FROM comentarios;


/* LISTAR TODOS OS RESULTADOS */

SELECT * FROM resultados;


/* ALTERAR UM CONTATO */

UPDATE contato

SET mensagem = 'Projeto excelente!'

WHERE id = 1;


/* EXCLUIR UM COMENTÁRIO */

DELETE FROM comentarios

WHERE id = 2;