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