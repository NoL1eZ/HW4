SELECT genre gn, COUNT(artist_id) FROM artist_genre art_gn
GROUP BY gn;

SELECT album_name, COUNT(track_id) FROM album a
FULL JOIN track t ON a.album_id = t.album_id
WHERE year_of_issue >=2019 AND year_of_issue <= 2020
GROUP BY album_name;

SELECT album_name, AVG(duration) FROM album a
JOIN track t ON a.album_id = t.album_id
GROUP BY album_name;

SELECT artist_name FROM artist a
JOIN artist_album aa ON a.artist_id = aa.artist 
JOIN album alb ON aa.album = alb.album_id  
WHERE year_of_issue != 2020
GROUP BY artist_name;

SELECT collection_name FROM collection_track_list ctl 
JOIN track_list tl  ON ctl.collection_track_list_id = tl.collection 
JOIN track t ON tl.track = t.track_id 
JOIN album alb ON alb.album_id = t.album_id
JOIN artist_album aa ON alb.album_id = aa.album
JOIN artist a ON a.artist_id = aa.artist 
WHERE artist_id = 2
GROUP BY collection_name;


SELECT album_name FROM album alb
FULL JOIN artist_album aa ON alb.album_id = aa.album
FULL JOIN artist a ON a.artist_id = aa.artist 
FULL JOIN artist_genre ag ON a.artist_id = ag.artist_id
WHERE ag.artist_id = (SELECT artist_id FROM artist_genre agn GROUP BY artist_id ORDER BY COUNT(genre) DESC LIMIT 1)
GROUP BY album_name;

SELECT track_name FROM track t 
FULL JOIN track_list tl ON tl.track = t.track_id 
WHERE t.track_id = (SELECT track_id FROM track t FULL JOIN track_list tl ON tl.track = t.track_id GROUP BY track_id ORDER BY COUNT(collection) ASC LIMIT 1)
GROUP BY track_name;

SELECT artist_name FROM artist a
JOIN artist_album aa ON a.artist_id = aa.artist 
JOIN album alb ON aa.album = alb.album_id  
JOIN track t ON alb.album_id = t.album_id
WHERE duration = (SELECT duration FROM track t GROUP BY duration ORDER BY duration ASC LIMIT 1)
GROUP BY artist_name;

SELECT album_name FROM album a
FULL JOIN track t ON a.album_id = t.album_id
GROUP BY album_name 
ORDER BY COUNT(track_id) 
ASC LIMIT 1;