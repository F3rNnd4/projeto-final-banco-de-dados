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

INSERIR DADOS NAS TABELAS:

- Entrevistas: Videos

INSERT INTO entrevistas (url_video) 
VALUES 
('https://www.youtube.com/watch?v=i7MZpiRht2E'),   -- Álgebra
('https://www.youtube.com/watch?v=th5k6bzSDTA'), -- Geometria
('https://www.youtube.com/watch?v=6o1OhV_RZUU'), -- Trigonometria
('https://www.youtube.com/watch?v=xpv-SWbDUr8'), -- Funções e Gráficos
('https://www.youtube.com/watch?v=np6rfsWo_3g'), -- Estatística e Probabilidade
('https://www.youtube.com/watch?v=vxKV2UZkKm8');  -- Matemática Financeira



- Entrevistas: Matérias

-- Álgebra
INSERT INTO materias (id_entrevista, nome_materia) 
VALUES (1, 'Álgebra');

-- Geometria
INSERT INTO materias (id_entrevista, nome_materia) 
VALUES (2, 'Geometria');

-- Trigonometria
INSERT INTO materias (id_entrevista, nome_materia) 
VALUES (3, 'Trigonometria');

-- Funções e Gráficos
INSERT INTO materias (id_entrevista, nome_materia) 
VALUES (4, 'Funções e Gráficos');

-- Estatística e Probabilidade
INSERT INTO materias (id_entrevista, nome_materia) 
VALUES (5, 'Estatística e Probabilidade');

-- Matemática Financeira
INSERT INTO materias (id_entrevista, nome_materia) 
VALUES (6, 'Matemática Financeira');



- Dicas: Matérias

Dicas - Álgebra

INSERT INTO dicas (descricao, url_dica, id_materia) 
VALUES 
('1. Básicos: Estude operações e equações de primeiro grau.
2. Prática: Resolva muitos exercícios.
3. Tutoriais: Veja vídeos explicativos online.
4. Visuais: Use gráficos e diagramas.', 'https://www.todamateria.com.br/equacao-do-primeiro-grau/', 1);



Dicas - Geometria

INSERT INTO dicas (descricao, url_dica, id_materia) 
VALUES 
('1. Conceitos Básicos: Estude pontos, linhas, planos, e ângulos.
2. Prática: Resolva muitos exercícios e problemas.
3. Tutoriais e Vídeos: Utilize vídeos explicativos e tutoriais online para entender melhor.
4. Recursos Visuais: Use gráficos, diagramas e ferramentas interativas para visualizar as relações geométricas.', 'https://www.todamateria.com.br/matematica/geometria/', 2);

Dicas - Trigonometria

INSERT INTO dicas (descricao, url_dica, id_materia) 
VALUES 
('1. Conceitos Básicos: Entenda seno, cosseno e tangente.
2. Prática: Resolva muitos exercícios.
3. Tutoriais: Veja vídeos e tutoriais online.
4. Visuais: Use gráficos e diagramas.', 'https://www.todamateria.com.br/seno-cosseno-e-tangente/', 3);

Dicas - Funções e Gráficos

INSERT INTO dicas (descricao, url_dica, id_materia) 
VALUES 
('1. Básicos: Entenda o domínio, contradomínio e imagem de funções.
2. Prática: Resolva muitos exercícios de funções e gráficos.
3. Tutoriais: Veja vídeos explicativos online.
4. Visuais: Use gráficos e diagramas interativos.', 'https://www.todamateria.com.br/funcao/', 4);

Dicas - Estatística e Probabilidade

INSERT INTO dicas (descricao, url_dica, id_materia) 
VALUES 
('1. Básicos: Estude média, mediana, moda e variância.
2. Prática: Faça muitos exercícios.
3. Tutoriais: Veja vídeos explicativos online.
4. Visuais: Use gráficos e diagramas interativos.', 'https://www.todamateria.com.br/matematica/estatistica/', 5);

Dicas - Matemática Financeira

INSERT INTO dicas (descricao, url_dica, id_materia) 
VALUES 
('1. Básicos: Estude capital, juros simples e compostos.
2. Prática: Faça muitos exercícios.
3. Tutoriais: Assista vídeos explicativos online.
4. Visuais: Use gráficos e diagramas.', 'https://www.todamateria.com.br/matematica-financeira-conceitos-formulas/', 6);


SELECT * FROM dicas;

SELECT * FROM entrevistas;

SELECT * FROM materias;
