    -- PÁGINA: ENTREVISTAS E DICAS
    MER
    Entidades:

- Entrevista
- Dica
- Matérias de Entrevistas e Dicas


    Atributos:

Entrevista:

- id_entrevista

- titulo

- descrição da entrevista 

- duração (em minutos)

- url_video

Dica:

- id_dica

- texto

- id_materia



- Relacionamentos:

- Uma Entrevista é única e se relaciona diretamente com Dicas .
- Uma Dica é única e se relaciona diretamente com Entrevistas.

- Uma Materia de Dica pode ter N Dicas.
- Uma Dica pertence a 1 Materia.


- Uma Entrevista pertence a 1 Materia.
- Uma Materia pertence a 1 Entrevistas.

CRIAÇÃO DAS TABELAS:

CREATE TABLE entrevistas (
    id_entrevista SERIAL PRIMARY KEY,
    titulo VARCHAR(255),
    descricao VARCHAR(255),
    duracao INT,
    url_video VARCHAR(255)
);

SELECT * FROM entrevistas;

CREATE TABLE dicas (
    id_dica SERIAL PRIMARY KEY,
    texto VARCHAR(255),
    descricao VARCHAR(255),
    id_materia INT,
    FOREIGN KEY (id_materia) REFERENCES materias(id_materia)
);

SELECT * FROM dicas;

CREATE TABLE materias (
    id_materia SERIAL PRIMARY KEY,
    id_entrevista INT,
    FOREIGN KEY (id_entrevista) REFERENCES entrevistas(id_entrevista)
);

SELECT * FROM materias;



