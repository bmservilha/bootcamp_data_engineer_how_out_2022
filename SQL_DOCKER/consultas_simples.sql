-- CREATE TABLE billboard

create table public."Billboard" (
"date" date null,
"rank" int4 null,
"song" varchar(300) null,
"artist" varchar(300) null,
"last-week" int4 null,
"peak-rank" int4 null,
"weeks-on-board" int4 null
);

select  COUNT(*) from "Billboard" b;


SELECT * FROM "Billboard" b LIMIT 100;

SELECT "date",
"rank",
"song",
"artist",
"last-week",
"peak-rank",
"weeks-on-board"
FROM "Billboard" b 
LIMIT 100;

SELECT 
b.song, 
b.artist 
FROM "Billboard" b 
WHERE b.artist = 'Chuck Berry';

SELECT 
    b.artist,   
    b.song,
    COUNT(*) AS qtd_musica
FROM "Billboard" b 
WHERE b.artist = 'Chuck Berry'
GROUP BY b.artist, b.song
ORDER BY qtd_musica DESC;




