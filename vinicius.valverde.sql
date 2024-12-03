-- PÁGINA: NOTÍCIAS

MER
Entidades:

- Autores;
- Notícias;

Atributos:

Autores:
- id
- Nome

Notícias:
- id
- Título 
- Descrição 
- Imagem

Relacionamentos: 

- Autores possuem no minimo 1 e no maximo N Notícias,
- Notícias possuem no minimo 1 e no maximo 1 Autores;


-- Cria o banco de dados chamado noticias
CREATE DATABASE noticias;

-- Cria a tabela Autores com id e nome
CREATE TABLE Autores (
    id SERIAL PRIMARY KEY, 
    nome VARCHAR(255) NOT NULL UNIQUE 
);

-- Insere autores na tabela 
INSERT INTO Autores (nome) VALUES ('Jessica Prestelo');
INSERT INTO Autores (nome) VALUES ('Matheus Couto');
INSERT INTO Autores (nome) VALUES ('Vinicius Valverde');

-- Seleciona todos os Autores
SELECT * FROM Autores;

-- Cria a tabela Noticias com  id, autor_id(fk), titulo, resumo e imagem
CREATE TABLE Noticias (
    id SERIAL PRIMARY KEY, 
    autor_id INT NOT NULL, 
    titulo VARCHAR(200) NOT NULL, 
    resumo VARCHAR(200) NOT NULL, 
    imagem TEXT NOT NULL, 
    imagemAdd TEXT, 
    imagemAdd2 TEXT,
    CONSTRAINT fk_autor
        FOREIGN KEY (autor_id) REFERENCES Autores(id)
);

-- Insere registros na tabela Noticias

INSERT INTO Noticias (autor_id, titulo, resumo, imagem) VALUES (1, 'Os 12 temas mais cobrados no Enem e vestibulares', 'Mostra os temas que mais caem e mostra vantagem ao estudar os temas', 'https://projeto-portal-matematica.vercel.app/imgNoticias/noticia-12temas.jpg');

INSERT INTO Noticias (autor_id, titulo, resumo, imagem) VALUES (2, 'Olimpíada de Matemática realiza fase final com estudantes de 22 estados', 'Dados de quantas equipes inscritas e ressalta a importância da participação', 'https://projeto-portal-matematica.vercel.app/imgNoticias/noticia-olimpiadaMat.jpg');

INSERT INTO Noticias (autor_id, titulo, resumo, imagem) VALUES (3, 'O que mais cai na prova de Matemática do Enem?', 'Dados precisos de cada tema e guia para priorizar estudos', 'https://projeto-portal-matematica.vercel.app/imgNoticias/noticias-oqMaisCai.webp');

INSERT INTO Noticias (autor_id, titulo, resumo, imagem) VALUES (2, 'Professor do Centro Paula Souza dá dicas de matemática para vestibular!', 'Dá dicas para auxiliar os estudos de matemática', 'https://projeto-portal-matematica.vercel.app/imgNoticias/profMat.jpg');

INSERT INTO Noticias (autor_id, titulo, resumo, imagem) VALUES (3, 'Dicas para se tranquilizar com a matemática do vestibular', 'Lista de dicas para auxílio', 'https://projeto-portal-matematica.vercel.app/imgNoticias/tranquilo.jpeg');

INSERT INTO Noticias (autor_id, titulo, resumo, imagem) VALUES (2, 'EX-BBB Gil do Vigor surpreende e lança série de aulas gratuitas', 'Fala sobre o canal de matemática de um famoso', 'https://projeto-portal-matematica.vercel.app/imgNoticias/noticias-gilV.webp');

INSERT INTO Noticias (autor_id, titulo, resumo, imagem) VALUES (1, 'Aluna CEV alcança a maior pontuação em matemática do Brasil no Enem', 'Marina Monteiro alcançou a incrível marca de 958,6 pontos em matemática, a maior do Brasil', 'https://projeto-portal-matematica.vercel.app/imgNoticias/noticias-alunaCEV.png');

INSERT INTO Noticias (autor_id, titulo, resumo, imagem) VALUES (2, 'Eles criaram uma metodologia para jovens brilharem em provas', 'Victor Hill e Jefferson Viana são fundadores da Associação Cactus, ONG responsável por maratonas de preparação para a Olimpíada de Matemática', 'https://projeto-portal-matematica.vercel.app/imgNoticias/noticias-elesCriaramMetodlogia.webp');

INSERT INTO Noticias (autor_id, titulo, resumo, imagem, imagemAdd) VALUES (2, 'Enem 2024: principais fórmulas de Matemática para revisar antes da prova', 'Lista de todas as principais fórmulas', 'https://projeto-portal-matematica.vercel.app/imgNoticias/noticias-elesCriaramMetodlogia.webp', 'http://127.0.0.1:5500/formulas.PNG');

INSERT INTO Noticias (autor_id, titulo, resumo, imagem) VALUES (1, 'Estudante nota máxima no Enem dá dicas de como se preparar para matemática e redação', 'Victor França indica um cronograma de estudos', 'https://projeto-portal-matematica.vercel.app/imgNoticias/noticias-notaMx.avif');

INSERT INTO Noticias (autor_id, titulo, resumo, imagem) VALUES (1, 'Medalhistas de matemática do Ceará se destacam no Brasil e no exterior', 'Ceará conta com grande número de medalhistas que até bolsa para os EUA ganham.', 'https://projeto-portal-matematica.vercel.app/imgNoticias/noticias-bolsaEua.webp');

INSERT INTO Noticias (autor_id, titulo, resumo, imagem, imagemAdd, imagemAdd2) VALUES (3, 'Jovem de 14 anos viraliza no TikTok ao resolver questões do ITA, o vestibular mais difícil do Brasil', 'Guga de 14 anos possui um canal e posta vídeos resolvendo questões matemáticas', 'https://projeto-portal-matematica.vercel.app/imgNoticias/noticias-14anos.avif', 'https://projeto-portal-matematica.vercel.app/imgNoticias/redeT.png', 'https://projeto-portal-matematica.vercel.app/imgNoticias/redeY.png');

INSERT INTO Noticias (autor_id, titulo, resumo, imagem) VALUES (3, 'Preparação estratégica para o sucesso nos Exames de 2025', 'A notícia destaca a importância da matemática nos vestibulares, com foco em aplicações práticas, estratégias de estudo e o uso de tecnologia para a preparação.', '');

INSERT INTO Noticias (autor_id, titulo, resumo, imagem) VALUES (3, 'Inteligência Artificial na Preparação para Vestibulares: Uma Revolução no Ensino de Matemática', 'Importância e utilização da IA nos estudos', 'https://s2-epocanegocios.glbimg.com/b1paAtpN7mOZ2t64mU5Z7-kARAg=/0x0:2159x1389/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e536e40f1baf4c1a8bf1ed12d20577fd/internal_photos/bs/2024/w/N/C9FAqCSuAAkwL9jGNlJA/gettyimages-966248982.jpg');

INSERT INTO Noticias (autor_id, titulo, resumo, imagem) VALUES (1, 'Matemática no Enem 2024: Desafios e Estratégias de Preparação', 'Cita estratégias para estudo, preparação', 'http://127.0.0.1:5503/imgNoticias/noticias-Aulao.png');

-- Seleciona os id's, títulos e os nomes dos autores
SELECT n.id , n.titulo, a.nome AS autor_nome
FROM Noticias n
INNER JOIN Autores a ON n.autor_id = a.id;

-- Notícia específica
SELECT n.titulo, n.resumo, a.nome AS autor_nome
FROM Noticias n
INNER JOIN Autores a ON n.autor_id = a.id
WHERE n.id = 1;

-- Seleciona as notícias em que o autor com ID 3 esteja associado com o seu nome 
SELECT n.titulo, a.nome AS autor_nome , n.id AS noticia
FROM Noticias n
INNER JOIN Autores a ON n.autor_id = a.id
WHERE n.autor_id = 3;

-- Seleciona os títulos das notícias e os nomes dos autores, ordenados pelo nome do autor
SELECT n.titulo, n.resumo, a.nome AS autor_nome
FROM Noticias n
INNER JOIN Autores a ON n.autor_id = a.id
ORDER BY a.nome;

-- Seleciona notícias pelo tamanho do título de maior para menor
SELECT n.titulo, a.nome AS autor_nome
FROM Noticias n
INNER JOIN Autores a ON n.autor_id = a.id
ORDER BY LENGTH(n.titulo) DESC;

-- Conta o número de notícias por autor
SELECT a.nome as autor_nome, COUNT(n.id) as total_noticias
FROM Autores a
LEFT JOIN Noticias n ON a.id = n.autor_id
GROUP BY a.nome;