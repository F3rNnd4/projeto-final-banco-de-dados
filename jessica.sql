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

CREATE TABLE materias (
    id_materia SERIAL PRIMARY KEY,
    id_entrevista INT,
    FOREIGN KEY (id_entrevista) REFERENCES entrevistas(id_entrevista)
);

SELECT * FROM materias;

CREATE TABLE dicas (
    id_dica SERIAL PRIMARY KEY,
    texto VARCHAR(255),
    descricao TEXT,
    url_dica VARCHAR(255),
    id_materia INT,
    FOREIGN KEY (id_materia) REFERENCES materias(id_materia)
);

SELECT * FROM dicas;


QUERIES - CRIAÇÃO DAS TABELAS: 




INSERIR DADOS NAS TABELAS:

-- Algebra
INSERT INTO entrevistas (titulo, descricao, duracao, url_video) VALUES ('Álgebra', 'Álgebra envolve resolver equações e trabalhar com variáveis. É usada para entender relações matemáticas e padrões.', 30, 'https://www.youtube.com/watch?v=123456');

INSERT INTO dicas (texto, descricao, url_dica, id_materia) VALUES ('Dicas de como aprender Álgebra', '1. Básicos: Estude operações e equações de primeiro grau.
2. Prática: Resolva muitos exercícios.
3. Tutoriais: Veja vídeos explicativos online.
4. Visuais: Use gráficos e diagramas.', 'https://www.todamateria.com.br/equacao-do-primeiro-grau/' 1);

INSERT INTO materias (id_entrevista) VALUES (1);

-- Geometria
INSERT INTO entrevistas (titulo, descricao, duracao, url_video) VALUES ('Geometria', 'Geometria estuda formas e suas propriedades, como áreas e volumes, sendo essencial para visualizar o espaço ao redor.', 21, 'https://www.youtube.com/watch?v=th5k6bzSDTA');

INSERT INTO dicas (texto, descricao, url_dica, id_materia) VALUES ('Dicas de como aprender Geometria', '1. Conceitos Básicos: Estude pontos, linhas, planos, e ângulos.
2. Prática: Resolva muitos exercícios e problemas.
3. Tutoriais e Vídeos: Utilize vídeos explicativos e tutoriais online para entender melhor.
4. Recursos Visuais: Use gráficos, diagramas e ferramentas interativas para visualizar as relações geométricas.', 'https://www.todamateria.com.br/matematica/geometria/', 2);

INSERT INTO materias (id_materia) VALUES (2);
--INSERT INTO materias (id_entrevista) VALUES (2);


-- Trigonometria
INSERT INTO entrevistas (titulo, descricao, duracao, url_video) VALUES ('Trigonometria', 'Trigonometria lida com ângulos e medidas de triângulos, usando funções como seno e cosseno para resolver problemas práticos.', 60, 'https://www.youtube.com/watch?v=6o1OhV_RZUU');

INSERT INTO dicas (texto, descricao, url_dica, id_materia) VALUES ('Dicas de como aprender Trigonometria', '1. Conceitos Básicos: Entenda seno, cosseno e tangente.
2. Prática: Resolva muitos exercícios.
3. Tutoriais: Veja vídeos e tutoriais online.
4. Visuais: Use gráficos e diagramas.', 'https://www.todamateria.com.br/seno-cosseno-e-tangente/' 3);

INSERT INTO materias (id_entrevista) VALUES (3);

-- Funções e Gráficos

INSERT INTO entrevistas (titulo, descricao, duracao, url_video) VALUES ('Funções e Gráficos', 'Funções descrevem relações entre variáveis, e gráficos ajudam a visualizá-las. São essenciais para entender comportamentos matemáticos.', 45, 'https://www.youtube.com/watch?v=xpv-SWbDUr8');

INSERT INTO dicas (texto, descricao, url_dica,  id_materia) VALUES ('Dicas de como aprender Funções e Gráficos', '1. Básicos: Entenda o domínio, contradomínio e imagem de funções.
2. Prática: Resolva muitos exercícios de funções e gráficos.
3. Tutoriais: Veja vídeos explicativos online.
4. Visuais: Use gráficos e diagramas interativos.', '' 4);

INSERT INTO materias (id_entrevista) VALUES (4);

-- Estatística e Probabilidade

INSERT INTO entrevistas (titulo, descricao, duracao, url_video) VALUES ('Estatística e Probabilidade', 'Estatística analisa dados e probabilidades modelam incertezas. São usadas em pesquisas, previsões e tomadas de decisão.', 60, 'https://www.youtube.com/watch?v=np6rfsWo_3g');

INSERT INTO dicas (texto, descricao, id_materia) VALUES ('Dicas de como aprender Estatística e Probabilidade', '1. Básicos: Estude média, mediana, moda e variância.
2. Prática: Faça muitos exercícios.
3. Tutoriais: Veja vídeos explicativos online.
4. Visuais: Use gráficos e diagramas interativos.' 5);

INSERT INTO materias (id_entrevista) VALUES (5);

-- Matemática Financeira

INSERT INTO entrevistas (titulo, descricao, duracao, url_video) VALUES ('Matemática Financeira', 'A matemática financeira aplica conceitos como juros e porcentagens para resolver problemas relacionados a investimentos e empréstimos.', 30, 'https://www.youtube.com/watch?v=678901');

INSERT INTO dicas (texto, descricao, id_materia) VALUES ('Dicas de como aprender Matemática Financeira', '1. Básicos: Estude capital, juros simples e compostos.
2. Prática: Faça muitos exercícios.
3. Tutoriais: Assista vídeos explicativos online.
4. Visuais: Use gráficos e diagramas.' 6);

INSERT INTO materias (id_entrevista) VALUES (6);









SELECT * FROM entrevistas;

SELECT * FROM dicas;

SELECT * FROM materias;

