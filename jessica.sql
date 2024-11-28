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

