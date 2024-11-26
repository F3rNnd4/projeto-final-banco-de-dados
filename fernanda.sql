-- PÁGINA: SIMULADO
MER
Entidades:

- Questão
- Alternativas
- Resposta
- Resolução

Atributos:

- Questão:                       - Alternativas:
    - id_questao                     - id_alternativa
    - enunciado                      - texto
    - alternativas                   - questão_id
    - resposta
    - simulado

- Resposta:                      - Resolução:
    - id_resposta                    - id_resolucao
    - id_questao                     - id_questao
    - id_alternativa                 - id_resposta

Relacionamentos:

- Uma Questão possui N Alternativas
- Alternativas são possuídas por 1 Questão

- Uma Questão possui 1 Resposta
- Resposta é possuída por 1 Questão

- Uma Questão possui 1 Resolução
- Resolução é possuída por 1 Questão

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