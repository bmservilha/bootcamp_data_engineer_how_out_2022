-- selecionar primeira ocorrência no ranking da Billboard para cada artista - Deduplicação de dados <3


WITH A AS (
SELECT 
    b."date",
    b."rank",
    b.artist,
    ROW_NUMBER() OVER(PARTITION BY artist ORDER BY b.artist, b."date") AS rnk
    FROM "Billboard" b
    --ORDER BY b.artist, b.date
)

SELECT * FROM A
WHERE rnk=1;


