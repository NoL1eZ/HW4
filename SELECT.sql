SELECT genre gn, COUNT(artist_id) FROM artist_genre art_gn
GROUP BY gn;

SELECT album_name, COUNT(track_id) FROM album a
JOIN track t ON a.album_id = t.album_id
WHERE year_of_issue >=2019 AND year_of_issue <= 2020
GROUP BY album_name;

SELECT album_name, AVG(duration) FROM album a
JOIN track t ON a.album_id = t.album_id
GROUP BY album_name;

SELECT artist_name FROM artist a
WHERE artist_id NOT IN  (SELECT DISTINCT (artist_id) FROM artist a JOIN artist_album aa ON a.artist_id = aa.artist JOIN album alb ON aa.album = alb.album_id WHERE year_of_issue = 2020);

SELECT DISTINCT collection_name FROM collection_track_list ctl 
JOIN track_list tl  ON ctl.collection_track_list_id = tl.collection 
JOIN track t ON tl.track = t.track_id 
JOIN album alb ON alb.album_id = t.album_id
JOIN artist_album aa ON alb.album_id = aa.album
JOIN artist a ON a.artist_id = aa.artist 
WHERE artist_id = 2;

SELECT album_name FROM album alb
FULL JOIN artist_album aa ON alb.album_id = aa.album
FULL JOIN artist a ON a.artist_id = aa.artist 
FULL JOIN artist_genre ag ON a.artist_id = ag.artist_id
GROUP BY album_name
HAVING COUNT(DISTINCT ag.genre) > 1;

SELECT track_name, tl.track FROM track t 
FULL JOIN track_list tl ON tl.track = t.track_id 
GROUP BY track_name, tl.track
HAVING tl.track IS NULL;

SELECT artist_name FROM artist a
JOIN artist_album aa ON a.artist_id = aa.artist 
JOIN album alb ON aa.album = alb.album_id  
JOIN track t ON alb.album_id = t.album_id
WHERE duration = (SELECT MIN(duration) FROM track);

SELECT album_name, count_track FROM (SELECT album_id, COUNT(album_id) count_track FROM track GROUP BY album_id) track 
JOIN album a ON a.album_id = track.album_id 
GROUP BY a.album_name, track.count_track
HAVING count_track = (SELECT MIN(mycount) FROM (SELECT album_id, COUNT(album_id) mycount FROM track GROUP BY album_id) AS min_count);
