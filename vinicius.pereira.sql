-- PÁGINA: SOBRE NÓS

-- Criar banco de dados
CREATE DATABASE Projeto;


-- Criar tabela Pessoas
CREATE TABLE Pessoas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    papel VARCHAR(50) NOT NULL,
    instituicao VARCHAR(100) NOT NULL,
    foto_url VARCHAR(255),
    atividade TEXT
);

-- Inserir dados na tabela Pessoas
INSERT INTO Pessoas (nome, idade, papel, instituicao, foto_url, atividade)
VALUES
    ('Fernanda Louro', 17, 'P.O.', 'Estudante SESI SENAI', 'url_da_foto_fpo'),
    ('Vinicius Valverde', 17, 'Scrum Master', 'Estudante SESI SENAI', 'url_da_foto_vv', ),
    ('Vinicius Pereira', 16, 'Desenvolvedor', 'Estudante SESI SENAI', 'url_da_foto_vp'),
    ('Matheus Couto', 16, 'Desenvolvedor', 'Estudante SESI SENAI', 'url_da_foto_mc', ),
    ('Jéssica Prestelo', 16, 'Desenvolvedor', 'Estudante SESI SENAI', 'url_da_foto_jp'),
    ('Sarah Ribeiro', 16, 'Desenvolvedor', 'Estudante SESI SENAI', 'url_da_foto_sr');

-- Consultar todas as pessoas com suas atividades
SELECT id, nome, idade, papel, instituicao, foto_url, atividade
FROM Pessoas;

-- Criar tabela de Atividades
CREATE TABLE Atividades (
    id_atividade INT AUTO_INCREMENT PRIMARY KEY,
    id_pessoa INT,
    descricao TEXT NOT NULL,
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY (id_pessoa) REFERENCES Pessoas(id)
);

-- Inserir atividades na tabela Atividades
INSERT INTO Atividades (id_pessoa, descricao, data_inicio, data_fim)
VALUES
   