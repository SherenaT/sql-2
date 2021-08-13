-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.
SELECT * FROM invoice
JOIN invoice_line ON invoice_line.invoice_id = invoice.invoice_id
WHERE invoice_line.unit_price > 0.99;

-- Get the invoice_date, customer first_name and last_name, and total from all invoices.
SELECT invoice_date, c.first_name, c.last_name, total
FROM invoice i
JOIN customer c 
ON c.customer_id = i.invoice_id

-- Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers. Support reps are on the employee table.
SELECT c.first_name, c.last_name,  e.first_name, e.last_name
FROM  customer c
JOIN employee e
ON e.employee_id = c.customer_id

-- Get the album title and the artist name from all albums.
SELECT art.name, alb.title
FROM  artist art
JOIN album alb
ON alb.album_id = art.artist_id

-- Get all playlist_track track_ids where the playlist name is Music.
SELECT pt.track_id
FROM playlist_track pt
JOIN playlist p ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music';

-- Get all track name`s for `playlist_id.
SELECT t.name AS "Track Name", p.playlist_id, p.name AS "Playlist Name" from playlist p
JOIN track t ON t.track_id = p.playlist_id



-- Get all track name`s and the playlist `name that they’re on ( 2 joins ).

SELECT t.name AS "Track Name", p.name AS "Playlist Name" FROM track t
JOIN playlist_track pt ON t.track_id = pt.playlist_id
JOIN playlist p ON pt.playlist_id = p.playlist_id

-- Get all track name`s and album `title`s that are the genre `Alternative & Punk ( 2 joins ).
SELECT t.name AS "Track Name", a.title AS "Album Title", g.name "Genre" FROM track t
JOIN album a ON a.album_id = t.album_id
JOIN genre g on g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk'