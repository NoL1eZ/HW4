INSERT INTO Genres(genre_id, genre_name) 
VALUES('1', 'Metal');

INSERT INTO Genres(genre_id, genre_name) 
VALUES('2', 'Gothic_metal');

INSERT INTO Genres(genre_id, genre_name) 
VALUES('3', 'New_metal');

INSERT INTO Genres(genre_id, genre_name) 
VALUES('4', 'New_Russin_rock');

INSERT INTO Genres(genre_id, genre_name) 
VALUES('5', 'Rock');


INSERT INTO Artist(artist_id, artist_name) 
VALUES('1', 'AC/DC');

INSERT INTO Artist(artist_id, artist_name) 
VALUES('2', 'Ghost');

INSERT INTO Artist(artist_id, artist_name) 
VALUES('3', 'Sabaton');

INSERT INTO Artist(artist_id, artist_name) 
VALUES('4', 'Device');

INSERT INTO Artist(artist_id, artist_name) 
VALUES('5', 'RADIO_TAPOK');

INSERT INTO Artist(artist_id, artist_name) 
VALUES('6', 'Disturbed');

INSERT INTO Artist(artist_id, artist_name) 
VALUES('7', 'Ravenscode');

INSERT INTO Artist(artist_id, artist_name) 
VALUES('8', 'Neverlove');


INSERT INTO Album(album_id, album_name, year_of_issue) 
VALUES('1', 'Iron_man_2', '2010');

INSERT INTO Album(album_id, album_name, year_of_issue) 
VALUES('2', 'Meliora', '2016');

INSERT INTO Album(album_id, album_name, year_of_issue) 
VALUES('3', 'The_Great_war', '2019');

INSERT INTO Album(album_id, album_name, year_of_issue) 
VALUES('4', 'Attack_of_the_dead_man', '2019');

INSERT INTO Album(album_id, album_name, year_of_issue) 
VALUES('5', 'Device', '2013');

INSERT INTO Album(album_id, album_name, year_of_issue) 
VALUES('6', 'Legacy', '2020');

INSERT INTO Album(album_id, album_name, year_of_issue) 
VALUES('7', 'District_of_broken_hope', '2013');

INSERT INTO Album(album_id, album_name, year_of_issue) 
VALUES('8', 'The_lovemetal_we_deserve', '2021');


INSERT INTO Track(track_id, track_name, duration, album_id) 
VALUES('1', 'TNT', '213', '1');

INSERT INTO Track(track_id, track_name, duration, album_id) 
VALUES('2', 'Black_in_black', '255', '1');


INSERT INTO Track(track_id, track_name, duration, album_id) 
VALUES('3', 'Square_Hammer', '239', '2');

INSERT INTO Track(track_id, track_name, duration, album_id) 
VALUES('4', 'Bible', '394', '2');


INSERT INTO Track(track_id, track_name, duration, album_id) 
VALUES('5', 'The_Red_Baron', '202', '3');

INSERT INTO Track(track_id, track_name, duration, album_id) 
VALUES('6', 'Devil_Dogs', '197', '3');


INSERT INTO Track(track_id, track_name, duration, album_id) 
VALUES('7', 'Attack_of_the_dead_man', '354', '4');

INSERT INTO Track(track_id, track_name, duration, album_id) 
VALUES('8', 'Attack_of_the_dead_man_Russian', '197', '4');


INSERT INTO Track(track_id, track_name, duration, album_id) 
VALUES('9', 'Haze', '240', '5');

INSERT INTO Track(track_id, track_name, duration, album_id) 
VALUES('10', 'You_think_you_know', '219', '5');


INSERT INTO Track(track_id, track_name, duration, album_id) 
VALUES('11', 'District_of_broken_hope', '242', '7');

INSERT INTO Track(track_id, track_name, duration, album_id) 
VALUES('12', 'My_Hero', '229', '7');


INSERT INTO Track(track_id, track_name, duration, album_id) 
VALUES('13', 'NATO_instructor', '217', '8');

INSERT INTO Track(track_id, track_name, duration, album_id) 
VALUES('14', 'Ladyboy', '190', '8');

INSERT INTO Track(track_id, track_name, duration, album_id) 
VALUES('15', 'Hero', '229', '7');

INSERT INTO Collection_track_list(collection_track_list_id, collection_name, year_of_issue) 
VALUES('1', 'Name_1', '2022');

INSERT INTO Collection_track_list(collection_track_list_id, collection_name, year_of_issue) 
VALUES('2', 'Name_2', '2021');

INSERT INTO Collection_track_list(collection_track_list_id, collection_name, year_of_issue) 
VALUES('3', 'Name_3', '2020');

INSERT INTO Collection_track_list(collection_track_list_id, collection_name, year_of_issue) 
VALUES('4', 'Name_4', '2019');

INSERT INTO Collection_track_list(collection_track_list_id, collection_name, year_of_issue) 
VALUES('5', 'Name_5', '2018');

INSERT INTO Collection_track_list(collection_track_list_id, collection_name, year_of_issue) 
VALUES('6', 'Name_6', '2017');

INSERT INTO Collection_track_list(collection_track_list_id, collection_name, year_of_issue) 
VALUES('7', 'Name_7', '2017');

INSERT INTO Collection_track_list(collection_track_list_id, collection_name, year_of_issue) 
VALUES('8', 'Neverlove', '2016');


INSERT INTO artist_album(artist, album) 
VALUES('1', '1');

INSERT INTO artist_album(artist, album) 
VALUES('2', '2');

INSERT INTO artist_album(artist, album) 
VALUES('3', '3');

INSERT INTO artist_album(artist, album) 
VALUES('3', '4');

INSERT INTO artist_album(artist, album) 
VALUES('5', '4');

INSERT INTO artist_album(artist, album) 
VALUES('4', '5');

INSERT INTO artist_album(artist, album) 
VALUES('7', '7');

INSERT INTO artist_album(artist, album) 
VALUES('8', '8');



INSERT INTO artist_genre(artist_id, genre) 
VALUES('1', '1');

INSERT INTO artist_genre(artist_id, genre) 
VALUES('3', '3');

INSERT INTO artist_genre(artist_id, genre) 
VALUES('4', '1');

INSERT INTO artist_genre(artist_id, genre) 
VALUES('6', '1');

INSERT INTO artist_genre(artist_id, genre) 
VALUES('2', '2');

INSERT INTO artist_genre(artist_id, genre) 
VALUES('7', '3');

INSERT INTO artist_genre(artist_id, genre) 
VALUES('5', '4');

INSERT INTO artist_genre(artist_id, genre) 
VALUES('8', '4');

INSERT INTO artist_genre(artist_id, genre) 
VALUES('1', '5');


INSERT INTO track_list(track, collection) 
VALUES('1', '1');

INSERT INTO track_list(track, collection) 
VALUES('2', '1');

INSERT INTO track_list(track, collection) 
VALUES('3', '2');

INSERT INTO track_list(track, collection) 
VALUES('4', '2');

INSERT INTO track_list(track, collection) 
VALUES('5', '3');

INSERT INTO track_list(track, collection) 
VALUES('6', '3');

INSERT INTO track_list(track, collection) 
VALUES('7', '4');

INSERT INTO track_list(track, collection) 
VALUES('8', '4');

INSERT INTO track_list(track, collection) 
VALUES('9', '5');

INSERT INTO track_list(track, collection) 
VALUES('10', '5');

INSERT INTO track_list(track, collection) 
VALUES('1', '6');

INSERT INTO track_list(track, collection) 
VALUES('12', '6');

INSERT INTO track_list(track, collection) 
VALUES('13', '7');

INSERT INTO track_list(track, collection) 
VALUES('14', '7');

INSERT INTO track_list(track, collection) 
VALUES('15', '7');