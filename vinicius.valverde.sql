MER
Entidades:

Autores;
Notícias;

Atributos:

Autores:
- id
- Nome

Notícias 
- id
- Título 
- Descrição 
- Imagem

Relacionamentos: 

Autores possuem no minimo 1 e no maximo N Notícias,
Notícias possuem no minimo 1 e no maximo 1 Autores;

-- PÁGINA: NOTÍCIAS

CREATE DATABASE banco;

CREATE TABLE Autores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
    );

INSERT INTO Autores (nome) VALUES ('Fulano');
INSERT INTO Autores (nome) VALUES ('Ciclano');

CREATE TABLE Noticias (
    id SERIAL PRIMARY KEY,
    autor_id INT NOT NULL,
    titulo VARCHAR(50) NOT NULL,
    resumo VARCHAR(100) NOT NULL,
    imagem VARCHAR(200) NOT NULL,
    FOREIGN KEY (autor_id) REFERENCES Autores(id)
);

INSERT INTO Noticias (autor_id, titulo, resumo, imagem) VALUES (1, 'Matematica é top', 'A matemática é uma matéria que cai no nenem direto', '');

INSERT INTO Noticias (autor_id, titulo, resumo, imagem) VALUES (2, 'Matematica cai no enem pdp?', 'A matemática cai sempre no enem', 'https://i.pinimg.com/originals/b4/c3/d1/b4c3d1a5c4a6f3e6e3f2f4e2d3c2b3a.jpg');

SELECT n.titulo, n.resumo, n.imagem, a.nome as autor_nome
FROM Noticias n
INNER JOIN Autores a ON n.autor_id = a.id;