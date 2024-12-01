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

CRIAÇÃO DAS TABELAS E INSERTS:

CREATE TABLE questoes (
    id_questao SERIAL PRIMARY KEY,
    enunciado VARCHAR(255),
    resposta VARCHAR(255)
);

SELECT * FROM questoes;

INSERT INTO questoes (enunciado, resposta) VALUES ('Determine os valores de x que tornam a equação 4x² - 16 = 0 verdadeira.', 'x = -1 e x = 2');
INSERT INTO questoes (enunciado, resposta) VALUES ('Dada a equação -x² -4x +5 = 0, podemos afirmar que o conjunto de soluções dessa equação é:', 'x¹ = -5 e x² = 1');
INSERT INTO questoes (enunciado, resposta) VALUES ('Uma equação foi descrita da seguinte maneira: (k² – 4) x³ + ( k – 2 )x² + 7x - 8 = 0. Analisando os coeficientes, o valor de k que faz com que essa equação seja uma equação do 2º grau é:', 'k = - 2');
INSERT INTO questoes (enunciado, resposta) VALUES ('Qual das alternativas a seguir não é uma característica de sólidos geométricos?', 'São bidimensionais.');
INSERT INTO questoes (enunciado, resposta) VALUES ('Calcule a área e o perímetro de um círculo com raio de 7 cm.', 'Área: 154 cm², Perímetro: 28π cm');
INSERT INTO questoes (enunciado, resposta) VALUES ('Num triângulo retângulo, se os comprimentos dos catetos são 6 cm e 8 cm, qual é o comprimento da hipotenusa?', '10 cm');
INSERT INTO questoes (enunciado, resposta) VALUES ('Qual é o valor da tangente de um ângulo 𝜃 em um triângulo retângulo, onde o cateto oposto ao ângulo mede 6 cm e o cateto adjacente mede 8 cm?', 'tan⁡(θ) = 4/3');
INSERT INTO questoes (enunciado, resposta) VALUES ('Num triângulo retângulo, o comprimento da hipotenusa é 13 cm e um dos catetos mede 5 cm. Qual é o comprimento do outro cateto?', '8 cm');
INSERT INTO questoes (enunciado, resposta) VALUES ('Em um triângulo retângulo, se o comprimento do cateto oposto ao ângulo 𝜃 é 7 cm e a hipotenusa mede 25 cm, qual é o valor do seno de 𝜃?', 'sin⁡(θ)=7/25');
INSERT INTO questoes (enunciado, resposta) VALUES ('Considere a função f(x) = x² - 4x + 4. Qual das seguintes opções representa corretamente o gráfico dessa função?', 'Uma parábola com vértice no ponto (2, 0).');
INSERT INTO questoes (enunciado, resposta) VALUES ('Um gráfico mostra a função g(x) = -2x + 6. Qual das seguintes opções representa corretamente a interseção desse gráfico com o eixo y?', '(0, 6)');
INSERT INTO questoes (enunciado, resposta) VALUES ('Uma empresa observa que suas vendas mensais V(t) (em unidades) podem ser modeladas pela função linear V(t) = 500 + 20t, onde t é o tempo em meses. Qual será a quantidade de vendas após 12 meses?', '740 unidades');
INSERT INTO questoes (enunciado, resposta) VALUES ('Um conjunto de dados consiste nos seguintes números: 3, 7, 7, 2, 5, 10, 7, 4. Qual é a moda desse conjunto de dados?', '7');
INSERT INTO questoes (enunciado, resposta) VALUES ('Em uma pesquisa sobre o número de horas de trabalho semanal de um grupo de pessoas, os dados coletados foram os seguintes: 40, 38, 45, 42, 39, 37, 41. Qual é a média do número de horas de trabalho semanal dessas pessoas?', '40,0');
INSERT INTO questoes (enunciado, resposta) VALUES ('Uma urna contém 5 bolas vermelhas e 3 bolas azuis. Uma bola é retirada ao acaso, e sem reposição, uma segunda bola é retirada. Qual é a probabilidade de ambas as bolas serem vermelhas?', '5/8 × 4/7');
INSERT INTO questoes (enunciado, resposta) VALUES ('Um investimento de R$ 2.000,00 é aplicado a uma taxa de juros simples de 5% ao ano. Qual será o montante total após 3 anos?', 'R$ 2.500,00');
INSERT INTO questoes (enunciado, resposta) VALUES ('Um capital de R$ 1.500,00 é aplicado a uma taxa de juros compostos de 4% ao mês. Qual será o valor acumulado após 6 meses?', 'R$ 1.930,00');
INSERT INTO questoes (enunciado, resposta) VALUES ('Uma família gasta 30% de sua renda mensal de R$ 4.000,00 em alimentação. Qual é o valor gasto em alimentação?', 'R$ 1.200,00');

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