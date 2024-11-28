    -- PÁGINA: ENTREVISTAS E DICAS
    MER
    Entidades:

- Entrevista
- Dica
- Matérias


    Atributos:

Entrevista:

- id_entrevista
- url_video

Matéria: 

- id_materia 
- id_entrevista
- nome_materia

Dica

- id_dica
- descricao
- url_dica
- id_materia

Relacionamentos:

- Uma Entrevista é única e se relaciona diretamente com Dicas .
- Uma Dica é única e se relaciona diretamente com Entrevistas.

- Uma Materia de Dica pode ter N Dicas.
- Uma Dica pertence a 1 Materia.


- Uma Entrevista pertence a 1 Materia.
- Uma Materia pertence a 1 Entrevistas.




CRIAÇÃO DAS TABELAS:

CREATE TABLE entrevistas (
    id_entrevista SERIAL PRIMARY KEY,
    url_video VARCHAR(255)
);

SELECT * FROM entrevistas;

CREATE TABLE materias (
    id_materia SERIAL PRIMARY KEY,
    id_entrevista INT,
    nome_materia VARCHAR(255),
    FOREIGN KEY (id_entrevista) REFERENCES entrevistas(id_entrevista)
);

SELECT * FROM materias;

CREATE TABLE dicas (
    id_dica SERIAL PRIMARY KEY,
    descricao TEXT,
    url_dica VARCHAR(255),
    id_materia INT,
    FOREIGN KEY (id_materia) REFERENCES materias(id_materia)
);

SELECT * FROM dicas;

