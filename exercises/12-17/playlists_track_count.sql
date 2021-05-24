SELECT p.Name, count(pt.trackId) FROM PlaylistTrack pt
JOIN Playlist p ON p.PlaylistId = pt.PlaylistId
GROUP BY p.Name