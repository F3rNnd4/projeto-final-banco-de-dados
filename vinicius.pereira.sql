-- PÁGINA: SOBRE NÓS 

-- Criar banco de dados
CREATE DATABASE Projeto;

-- Criar tabela Pessoas
CREATE TABLE Membros (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    papel VARCHAR(50) NOT NULL,
    instituicao VARCHAR(100) NOT NULL,
    foto_url VARCHAR(255)
);

SELECT * FROM Membros;

-- Inserir dados na tabela Membros
INSERT INTO Membros (nome, idade, papel, instituicao, foto_url)
VALUES
    ('Fernanda Louro', 17, 'P.O.', 'Estudante SESI SENAI', 'url_da_foto_fpo'),
    ('Vinicius Valverde', 17, 'Scrum Master', 'Estudante SESI SENAI', 'url_da_foto_vv' ),
    ('Vinicius Pereira', 17, 'Desenvolvedor', 'Estudante SESI SENAI', 'url_da_foto_vp'),
    ('Matheus Couto', 16, 'Desenvolvedor', 'Estudante SESI SENAI', 'url_da_foto_mc' ),
    ('Jéssica Prestelo', 16, 'Desenvolvedor', 'Estudante SESI SENAI', 'url_da_foto_jp'),
    ('Sarah Ribeiro', 16, 'Desenvolvedor', 'Estudante SESI SENAI', 'url_da_foto_sr');

-- Consultar todas as Membros com suas atividades
SELECT id, nome, idade, papel, instituicao, foto_url
FROM Membros;


