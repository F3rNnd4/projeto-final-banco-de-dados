-- PÁGINA: SIMULADO

MER
Entidades:

- Questões
- Alternativas
- Resposta

Atributos:

- Questões:
    - id_questao
    - enunciado
    - resposta

- Alternativas:
    - id_alternativa
    - texto
    - id_questao

- Resposta:
    - id_resposta
    - id_questao
    - id_alternativa

Relacionamentos:

- Uma Questão possui N Alternativas
- Alternativas são possuídas por 1 Questão

- Uma Questão possui 1 Resposta
- Resposta é possuída por 1 Questão

- Várias Alternativas podem ser a Resposta de uma Questão
- Uma Resposta pode ser de N Alternativas

CRIAÇÃO DAS TABELAS E INSERTS:

CREATE TABLE questoes (
    id_questao SERIAL PRIMARY KEY,
    enunciado VARCHAR(255),
    resposta VARCHAR(255)
);

INSERT INTO questoes (enunciado, resposta) VALUES 
('Determine os valores de x que tornam a equação 4x² - 16 = 0 verdadeira.', 'x = -1 e x = 2'),
('Dada a equação -x² -4x +5 = 0, podemos afirmar que o conjunto de soluções dessa equação é:', 'x¹ = -5 e x² = 1'),
('Uma equação foi descrita da seguinte maneira: (k² – 4) x³ + ( k – 2 )x² + 7x - 8 = 0. Analisando os coeficientes, o valor de k que faz com que essa equação seja uma equação do 2º grau é:', 'k = - 2'),
('Qual das alternativas a seguir não é uma característica de sólidos geométricos?', 'São bidimensionais.'),
('Calcule a área e o perímetro de um círculo com raio de 7 cm.', 'Área: 154 cm², Perímetro: 28π cm'),
('Num triângulo retângulo, se os comprimentos dos catetos são 6 cm e 8 cm, qual é o comprimento da hipotenusa?', '10 cm'),
('Qual é o valor da tangente de um ângulo 𝜃 em um triângulo retângulo, onde o cateto oposto ao ângulo mede 6 cm e o cateto adjacente mede 8 cm?', 'tan⁡(θ) = 4/3'),
('Num triângulo retângulo, o comprimento da hipotenusa é 13 cm e um dos catetos mede 5 cm. Qual é o comprimento do outro cateto?', '8 cm'),
('Em um triângulo retângulo, se o comprimento do cateto oposto ao ângulo 𝜃 é 7 cm e a hipotenusa mede 25 cm, qual é o valor do seno de 𝜃?', 'sin⁡(θ)=7/25'),
('Considere a função f(x) = x² - 4x + 4. Qual das seguintes opções representa corretamente o gráfico dessa função?', 'Uma parábola com vértice no ponto (2, 0).'),
('Um gráfico mostra a função g(x) = -2x + 6. Qual das seguintes opções representa corretamente a interseção desse gráfico com o eixo y?', '(0, 6)'),
('Uma empresa observa que suas vendas mensais V(t) (em unidades) podem ser modeladas pela função linear V(t) = 500 + 20t, onde t é o tempo em meses. Qual será a quantidade de vendas após 12 meses?', '740 unidades'),
('Um conjunto de dados consiste nos seguintes números: 3, 7, 7, 2, 5, 10, 7, 4. Qual é a moda desse conjunto de dados?', '7'),
('Em uma pesquisa sobre o número de horas de trabalho semanal de um grupo de pessoas, os dados coletados foram os seguintes: 40, 38, 45, 42, 39, 37, 41. Qual é a média do número de horas de trabalho semanal dessas pessoas?', '40,0'),
('Uma urna contém 5 bolas vermelhas e 3 bolas azuis. Uma bola é retirada ao acaso, e sem reposição, uma segunda bola é retirada. Qual é a probabilidade de ambas as bolas serem vermelhas?', '5/8 × 4/7'),
('Um investimento de R$ 2.000,00 é aplicado a uma taxa de juros simples de 5% ao ano. Qual será o montante total após 3 anos?', 'R$ 2.500,00'),
('Um capital de R$ 1.500,00 é aplicado a uma taxa de juros compostos de 4% ao mês. Qual será o valor acumulado após 6 meses?', 'R$ 1.930,00'),
('Uma família gasta 30% de sua renda mensal de R$ 4.000,00 em alimentação. Qual é o valor gasto em alimentação?', 'R$ 1.200,00');

SELECT * FROM questoes;

CREATE TABLE alternativas (
    id_alternativa SERIAL PRIMARY KEY,
    texto VARCHAR(255),
    id_questao INT,
    FOREIGN KEY (id_questao) REFERENCES questoes(id_questao)
);

INSERT INTO alternativas (texto, id_questao) VALUES 
('A) x = -2 e x = 2', 1),
('B) x = -1 e x = 2', 1),
('C) x = -2 e x = 1', 1),
('D) x = -1 e x = 1', 1),

('A) x¹ = 2 e X² = - 1', 2),
('B) x¹ = -10 e x² = -1', 2),
('C) x¹ = -5 e x² = 1', 2),
('D) x¹ = 5 e x² = 1', 2),

('A) k = ± 2', 3),
('B) k = + 2', 3),
('C) k = - 2', 3),
('D) k = 0', 3),

('A) Têm volume.', 4),
('B) Têm faces planas.', 4),
('C) São bidimensionais.', 4),
('D) Ocupam espaço.', 4),

('A) Área: 49π cm², Perímetro: 14π cm', 5),
('B) Área: 154π cm², Perímetro: 14π cm', 5),
('C) Área: 49π cm², Perímetro: 28π cm', 5),
('D) Área: 154 cm², Perímetro: 28π cm', 5),

('A) 8 cm', 6),
('B) 10 cm', 6),
('C) 12 cm', 6),
('D) 14 cm', 6),

('A) tan⁡(θ) = 3/4', 7),
('B) tan⁡(θ) = 4/3', 7),
('C) tan⁡(θ) = 3/5', 7),
('D) tan⁡(θ) = 6/8', 7),

('A) 8 cm', 8),
('B) 9 cm', 8),
('C) 10 cm', 8),
('D) 12 cm', 8),

('A) sin⁡(θ)=7/25', 9),
('B) sin⁡(θ)=24/25', 9),
('C) sin⁡(θ)=25/7', 9),
('D) sin⁡(θ)=24/7', 9),

('A) Uma linha reta que passa pelo ponto (0, 4).', 10),
('B) Uma parábola com vértice no ponto (2, 0).', 10),
('C) Uma hipérbole com assíntota em y = 4.', 10),
('D) Uma parábola com vértice no ponto (0, -4).', 10),

('A) (0, 6)', 11),
('B) (6, 0)', 11),
('C) (0, -2)', 11),
('D) (2, 0)', 11),

('A) 740 unidades', 12),
('B) 720 unidades', 12),
('C) 680 unidades', 12),
('D) 700 unidades', 12),

('A) 3', 13),
('B) 5', 13),
('C) 7', 13),
('D) 10', 13),

('A) 38,5', 14),
('B) 40,0', 14),
('C) 41,0', 14),
('D) 42,5', 14),

('A) 5/8 × 4/7', 15),
('B) 5/8 × 5/7', 15),
('C) 4/8 × 4/7', 15),
('D) 5/8 × 3/7', 15),

('A) R$ 2.300,00', 16),
('B) R$ 2.200,00', 16),
('C) R$ 2.500,00', 16),
('D) R$ 2.600,00', 16),

('A) R$ 1.870,00', 17),
('B) R$ 1.890,00', 17),
('C) R$ 1.950,00', 17),
('D) R$ 1.930,00', 17),

('A) R$ 1.000,00', 18),
('B) R$ 1.200,00', 18),
('C) R$ 1.400,00', 18),
('D) R$ 1600,00', 18);

SELECT * FROM alternativas;

CREATE TABLE respostas (
    id_resposta SERIAL PRIMARY KEY,
    id_questao INT,
    id_alternativa INT,
    FOREIGN KEY (id_questao) REFERENCES questoes(id_questao),
    FOREIGN KEY (id_alternativa) REFERENCES alternativas(id_alternativa)
);

INSERT INTO respostas (id_questao, id_alternativa) VALUES 
(1, 2),
(2, 7),
(3, 11),
(4, 15),
(5, 20),
(6, 22),
(7, 26),
(8, 29),
(9, 33),
(10, 38),
(11, 41),
(12, 45),
(13, 51),
(14, 54),
(15, 57),
(16, 63),
(17, 68),
(18, 70);

SELECT * FROM respostas;

CONSULTA: 

-- Seleciona o id da resposta, o enunciado da questão e o texto da alternativa
SELECT r.id_resposta, q.enunciado, a.texto
FROM respostas r
-- Junta a tabela respostas com a tabela questoes com base no id da questão
JOIN questoes q
ON r.id_questao = q.id_questao
-- Junta a tabela respostas com a tabela alternativas com base no id da alternativa
JOIN alternativas a
ON r.id_alternativa = a.id_alternativa;