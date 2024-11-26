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

-- Código SQL para criação de tabelas e inserção de dados

CREATE TABLE carreira (
id_carreira SERIAL PRIMARY KEY,
titulo VARCHAR(100) NOT NULL,
descricao TEXT NOT NULL
);

CREATE TABLE estagio (
id_estagio SERIAL PRIMARY KEY,
id_carreira INT NOT NULL,
descricao TEXT NOT NULL,
FOREIGN KEY (id_carreira) REFERENCES carreira (id_carreira)
);

INSERT INTO carreira (titulo, descricao) VALUES 
('Analista de Dados', 'Especializados em coletar, processar e verificar dados para identificar tendências e insights.'),
('Engenheiro de sistemas', 'Desenvolvem instruções detalhadas para o computador operar.'),
('Economista', 'Estudam dados de mercado e usam análises estatísticas para entender tendências econômicas.'),
('Cientista de dados', 'Concentrados em extrair informações úteis a partir de dados complexos.'),
('Matemático', 'Profissional que se dedica ao estudo de matemática, compreendendo padrões e quantidades.'),
('Professor de matemática', 'Profissionais em alta demanda, com crescimento esperado de 33% entre 2016 e 2026.');

INSERT INTO estagio (id_carreira, descricao) VALUES 
(1, 'Estágio em Análise de Dados'),
(2, 'Estágio em Engenharia de Sistemas'),
(3, 'Estágio em Economia'),
(4, 'Estágio em Ciência de Dados'),
(5, 'Estágio em Matemática'),
(6, 'Estágio em Ensino de Matemática');

-- Selecionar todas as carreiras
SELECT * FROM carreira;

-- Selecionar todas as estágios
SELECT * FROM estagio;

-- Selecionar carreiras com um título específico
SELECT * FROM carreira WHERE titulo = 'Analista de Dados';

-- Selecionar estágios relacionados a uma carreira específica
SELECT * FROM estagio WHERE id_carreira = 1;

-- Selecionar todas as carreiras e seus estágios correspondentes
SELECT c.id_carreira, c.titulo, e.descricao AS estagio_descricao
FROM carreira c
JOIN estagio e ON c.id_carreira = e.id_carreira;

-- Contar o número de estágios por carreira
SELECT c.titulo, COUNT(e.id_estagio) AS numero_de_estagios
FROM carreira c
LEFT JOIN estagio e ON c.id_carreira = e.id_carreira
GROUP BY c.titulo;