WITH A AS(
SELECT DISTINCT 
    b.artist, 
    b.song,
    ROW_NUMBER() OVER (PARTITION BY artist ORDER BY  artist, song)
FROM "Billboard" b)

SELECT * FROM A
ORDER BY 1,2 
 -----
WITH A AS(
SELECT DISTINCT 
    b.artist, 
    b.song,
    RANK() OVER (PARTITION BY artist ORDER BY artist, song)
FROM "Billboard" b)

SELECT * FROM A
ORDER BY 1,2 


----
-- atribui um contador para cada música de um artista e termina a contagem no próximo artista
WITH A AS(
SELECT DISTINCT 
    b.artist, 
    b.song,
    DENSE_RANK() OVER (PARTITION BY artist ORDER BY song)
FROM "Billboard" b)

SELECT * FROM A
ORDER BY 1,2 

WITH A AS(
SELECT DISTINCT 
    b.artist, 
    b.song,
    DENSE_RANK() OVER (PARTITION BY artist ORDER BY song)
FROM "Billboard" b)

SELECT * FROM A
ORDER BY 1,2 

------
-- 29 ocorrências da música Because The Night do 10.000 Maniacs (Patti Smith <3)
-- como tirar esse número?
-- SELECT artist, song FROM "Billboard" b ORDER BY 1,2;
WITH A AS (
SELECT artist,
song,
ROW_NUMBER() OVER (PARTITION BY artist, song)
FROM "Billboard" b)

SELECT MAX("row_number") FROM A
WHERE A.artist = '10,000 Maniacs'
AND A.song = 'Because The Night'
;







