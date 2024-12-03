-- PÁGINA: SOBRE NÓS 

MER 
Entidades:

- Membros

Atributos:

- id(Chave Primária)
- nome
- idade
- papel
- instituicao
- foto_url

Relacionamento:

- Nenhum


-- Criar banco de dados
CREATE DATABASE Projeto;

-- Usar o banco de dados criado
USE Projeto;

-- Criar tabela Membros
CREATE TABLE Membros (
    id SERIAL PRIMARY KEY , -- Chave primária
    nome VARCHAR(100) ,
    idade INT ,
    papel VARCHAR(50) ,
    instituicao VARCHAR(100) ,
    foto_url VARCHAR(255) -- URL da foto opcional

);

-- Inserir dados na tabela Membros
INSERT INTO Membros (nome, idade, papel, instituicao, foto_url)
VALUES
    ('Fernanda Louro', 17, 'P.O.', 'Estudante SESI SENAI', 'url_da_foto_fpo'),
    ('Vinicius Valverde', 17, 'Scrum Master', 'Estudante SESI SENAI', 'url_da_foto_vv'),
    ('Vinicius Pereira', 16, 'Desenvolvedor', 'Estudante SESI SENAI', 'url_da_foto_vp'),
    ('Matheus Couto', 16, 'Desenvolvedor', 'Estudante SESI SENAI', 'url_da_foto_mc'),
    ('Jéssica Prestelo', 16, 'Desenvolvedor', 'Estudante SESI SENAI', 'url_da_foto_jp'),
    ('Sarah Ribeiro', 16, 'Desenvolvedor', 'Estudante SESI SENAI', 'url_da_foto_sr');

-- Consultar todas as Membros
SELECT id, nome, idade, papel, instituicao, foto_url
FROM Membros;

