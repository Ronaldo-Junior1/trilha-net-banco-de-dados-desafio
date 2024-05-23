-- Atividade 1
SELECT Nome,Ano FROM Filmes

-- Atividade 2
SELECT Nome,Ano FROM Filmes ORDER BY Ano

-- Atividade 3
SELECT Nome,Ano,Duracao FROM Filmes 
WHERE Nome = 'De Volta para o Futuro'

-- Atividade 4
SELECT Nome,Ano,Duracao FROM Filmes 
WHERE Ano = 1997

-- Atividade 5
SELECT Nome,Ano,Duracao FROM Filmes 
WHERE Ano > 2000

-- Atividade 6
SELECT Nome,Ano,Duracao FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- Atividade 7
SELECT Ano, Count(Id) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Atividade 8
SELECT PrimeiroNome,UltimoNome FROM Atores
WHERE Genero = 'M'

-- Atividade 9
SELECT PrimeiroNome,UltimoNome FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Atividade 10
SELECT F.Nome, G.Genero FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero

-- Atividade 11
SELECT F.Nome, G.Genero FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'

-- Atividade 12
SELECT F.Nome,A.PrimeiroNome,A.UltimoNome,EF.Papel
FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON A.Id = EF.IdAtor