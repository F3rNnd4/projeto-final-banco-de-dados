-- PÁGINA: CARREIRAS E ESTÁGIOS

--MER
Entidades:
- Carreira  
- Estágio  

Atributos:
- Carreira:  
  - id_carreira  
  - titulo  
  - descricao  

- Estágio:  
  - id_estagio  
  - id_carreira  
  - descricao  

Relacionamentos:
Carreira 1:N Estágio  
- Uma Carreira possui N Estágios.
- Um Estágio pertence a 1 Carreira.