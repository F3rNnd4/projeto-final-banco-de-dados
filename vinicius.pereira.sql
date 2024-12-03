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
    id INT AUTO_INCREMENT PRIMARY KEY, -- Chave primária
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    papel VARCHAR(50) NOT NULL,
    instituicao VARCHAR(100) NOT NULL,
    foto_url VARCHAR(255), -- URL da foto opcional

);

-- Inserir dados na tabela Membros
INSERT INTO Membros (nome, idade, papel, instituicao, foto_url, atividade)
VALUES
    ('Fernanda Louro', 17, 'P.O.', 'Estudante SESI SENAI', 'url_da_foto_fpo', NULL),
    ('Vinicius Valverde', 17, 'Scrum Master', 'Estudante SESI SENAI', 'url_da_foto_vv', NULL),
    ('Vinicius Pereira', 16, 'Desenvolvedor', 'Estudante SESI SENAI', 'url_da_foto_vp', NULL),
    ('Matheus Couto', 16, 'Desenvolvedor', 'Estudante SESI SENAI', 'url_da_foto_mc', NULL),
    ('Jéssica Prestelo', 16, 'Desenvolvedor', 'Estudante SESI SENAI', 'url_da_foto_jp', NULL),
    ('Sarah Ribeiro', 16, 'Desenvolvedor', 'Estudante SESI SENAI', 'url_da_foto_sr', NULL);

-- Consultar todas as Membros
SELECT id, nome, idade, papel, instituicao, foto_url, atividade
FROM Membros;