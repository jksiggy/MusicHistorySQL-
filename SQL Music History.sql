
SELECT *
FROM Artist

SELECT *
FROM Album

SELECT *
FROM Song

SELECT *
FROM Genre

1.INSERT INTO Genre (Label) VALUES ('Reggae');

2.INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Bob Marley', 1971);

3.INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) 
VALUES ('The Exudos', '1o/10/1987', 230, 'I Records', 28, 15);


Sample.SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.Id;
SampleSELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id;

4.INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) 
VALUES ('Three Little Birds', 71, '11/21/1987', 15, 28, 23);

4.INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
 VALUES ('No Woman No Cry', 63, '02/11/1992', 15, 28, 23);

5.SELECT a.Title AS AlbumTitle, s.Title, c.ArtistName
FROM Song s
LEFT JOIN Album a ON s.AlbumId = a.Id
LEFT JOIN Artist c ON s.ArtistId = c.Id
WHERE c.Id = 28

6.SELECT COUNT(Title), AlbumId 
FROM Song
GROUP BY AlbumId;

7.SELECT COUNT(Title), ArtistId 
FROM Song
GROUP BY ArtistId;

8.SELECT COUNT(Title), GenreId 
FROM Song
GROUP BY GenreId;

9.SELECT 
Title AS AlbumTitle,
AlbumLength
FROM
Album
WHERE
AlbumLength =(
    SELECT
    MAX(AlbumLength)
    FROM
    Album
);

10.SELECT 
Title AS SongTitle,
SongLength
FROM
Song
WHERE
SongLength =(
    SELECT
    MAX(SongLength)
    FROM
    Song
);

11.SELECT s.Title AS SongTitle,
       a.Title As AlbumTitle,
       s.SongLength
  FROM Song s
       LEFT JOIN Album a on s.ArtistId = a.id
WHERE
SongLength =(
    SELECT
    MAX(SongLength)
    FROM
    Song
);