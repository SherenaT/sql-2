-- Subqueries
-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.
SELECT * FROM invoice
WHERE invoice_id IN(
  SELECT invoice_id FROM invoice_line il
  WHERE il.unit_price > 0.99)

-- Get all playlist tracks where the playlist name is Music.
SELECT * FROM playlist_track
WHERE playlist_id IN (
  SELECT playlist_id FROM playlist p
  WHERE p.name = 'Music')

-- Get all track names for playlist_id 5.
SELECT name, track_id FROM track
WHERE track_id IN(
	SELECT track_id FROM playlist_track
	WHERE track_id = 5
)

-- Get all tracks where the genre is Comedy.
SELECT name, genre_id FROM track
WHERE genre_id IN (
	SELECT genre_id FROM genre
  WHERE name = 'Comedy'
)

-- Get all tracks where the album is Fireball.
SELECT name, album_id FROM track
WHERE album_id IN(
  SELECT album_id FROM album
	where title = 'Fireball'
  )

-- Get all tracks for the artist Queen ( 2 nested subqueries ).
SELECT composer, name, album_id FROM track
WHERE album_id IN(
  SELECT album_id FROM album
	where artist_id IN(
  	SELECT artist_id FROM artist
    WHERE name = 'Queen'
  )
 )