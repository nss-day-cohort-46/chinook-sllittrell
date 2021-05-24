SELECT  t.Name trackName,
   a.Title albumTitle,
   m.Name mediaType,
   g.Name genreType 
FROM Track t
JOIN Album a ON a.AlbumId = t.AlbumId
JOIN MediaType m ON m.MediaTypeId = t.MediaTypeId
JOIN Genre g ON g.GenreId = t.GenreId
GROUP BY TrackId