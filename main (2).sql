use avaliacao_22a;

--  Inserir um Novo Livro
insert into Livros(titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) values
("As Crônicas de Nárnia", "C.S. Lewis", 1950, true, "Fantasia", "978-0064471190", "HarperCollins", 768, "Inglês");

-- Inserir Múltiplos Livros
insert into Livros(titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) values
("Cem Anos de Solidão", "Gabriel Garcia Marquez", 1967, true, "Ficção", '978-0241968581', "Penguin Books", 422, "Espanhol"),
("Harry Potter e a Pedra Filosofal", "J.K. Rowling", 1997, true, "Fantasia", '978-0439708180', "Bloomsbury", 309, "Inglês"),
("O Senhor dos Anéis: A Sociedade do Anel", "J.R.R. Tolkien", 1954, true, "Fantasia", '978-0618640157', "HarperCollins", 423, "Inglês");

-- Inserir Livro com Categoria Específica
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES ('A Fascinante História das Civilizações', 'Antony', 2024, true, 'História', '978-0616540157', 'Bloomsbury', 654, 'Português');



UPDATE Livros 
SET disponivel = false
WHERE ano_publicacao < 2000;


update Livros
set editora = 'Plume Books'
where titulo = '1984';


update Livros
set idioma = 'Inglês'
where editora = 'Penguin Books';


update Livros
set titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
where isbn = '978-0439708180';


delete 
from Livros
where categoria = 'Terror';


delete 
from Livros
where idioma = 'Francês' and ano_publicacao < 1970;

delete 
from Livros
where titulo = 'As Crônicas de Nárnia';


delete 
from Livros
where  editora = 'Penguin Books';


select *
from Livros
where quantidade_paginas > 500;

--  Selecionar com GROUP BY
SELECT categoria, count(categoria)
FROM Livros
GROUP BY categoria;

select titulo
from Livros
order by titulo asc
limit 5;


SELECT SUM(quantidade_paginas) AS total_paginas, AVG(quantidade_paginas) AS media_paginas
FROM Livros
WHERE categoria = 'Drama';



SELECT AVG(ano_publicacao)
FROM Livros;


select titulo, ano_publicacao
from Livros
where ano_publicacao = (select max(ano_publicacao) from livros);

select titulo, ano_publicacao
from Livros
where ano_publicacao = (select min(ano_publicacao) from livros);


select *
from Livros
order by ano_publicacao desc;


SELECT titulo
FROM Livros
WHERE idioma = 'Inglês'
UNION ALL
SELECT titulo
FROM Livros
WHERE idioma = 'Português';


select *
from Livros
where autor = "George Orwell"