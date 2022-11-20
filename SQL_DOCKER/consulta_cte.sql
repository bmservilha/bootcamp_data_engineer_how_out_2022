SELECT 
DISTINCT b.artist,
b.song
FROM "Billboard" b 
ORDER BY b.artist, b.song; 

SELECT 
b.artist,
COUNT(b.artist) AS qtd_song
FROM "Billboard" b 
GROUP BY b.artist
ORDER BY b.artist;
-----------------------------------------
WITH A AS (SELECT 
DISTINCT b.artist,
b.song
FROM "Billboard" b), 

B AS (SELECT
b.artist,
COUNT(b.artist) AS qtd_song
FROM "Billboard" b 
GROUP BY b.artist)

SELECT A.artist, B.qtd_song
FROM A
LEFT JOIN B ON A.artist = B.artist
ORDER BY A.artist;