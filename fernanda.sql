-- PÁGINA: SIMULADO
MER
Entidades:

- Questão
- Alternativas
- Resposta
- Resolução

Atributos:

- Questão:                       - Alternativas:
    - id                             - id
    - enunciado                      - texto
    - alternativas                   - questão_id
    - resposta
    - simulado

- Resposta:                      - Resolução:
    - id                             - id
    - questão_id                     - questão_id
    - alternativa_id                 - resposta_id

Relacionamentos:

Questão 1:N Alternativas
- Uma Questão possui N Alternativas
- Alternativas são possuídas por 1 Questão

Questão 1:1 Resposta
- Uma Questão possui 1 Resposta
- Resposta é possuída por 1 Questão

Questão 1:1 Resolução
- Uma Questão possui 1 Resolução
- Resolução é possuída por 1 Questão

Resposta 1:1 Resolução
- Uma Resposta possui 1 Resolução
- Resolução é possuída por 1 Resposta

CRIAÇÃO DAS TABELAS:

CREATE TABLE questoes (
    id_questao SERIAL PRIMARY KEY,
    enunciado VARCHAR(255),
    resposta VARCHAR(255),
    simulado VARCHAR(255)
);

SELECT * FROM questoes;

CREATE TABLE alternativas (
    id_alternativa SERIAL PRIMARY KEY,
    texto VARCHAR(255),
    id_questao INT,
    FOREIGN KEY (id_questao) REFERENCES questoes(id_questao)
);

SELECT * FROM alternativas;

CREATE TABLE respostas (
    id_resposta SERIAL PRIMARY KEY,
    id_questao INT,
    id_alternativa INT,
    FOREIGN KEY (id_questao) REFERENCES questoes(id_questao),
    FOREIGN KEY (id_alternativa) REFERENCES alternativas(id_alternativa)
);

SELECT * FROM respostas;

CREATE TABLE resolucoes (
    id_resolucao SERIAL PRIMARY KEY,
    id_questao INT,
    id_resposta INT,
    FOREIGN KEY (id_questao) REFERENCES questoes(id_questao),
    FOREIGN KEY (id_resposta) REFERENCES respostas(id_resposta)
);

SELECT * FROM resolucoes;