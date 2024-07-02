DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS library;

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

INSERT INTO categories (id, name) VALUES (1, 'Manga');
INSERT INTO categories (id, name) VALUES (2, 'Anime');

CREATE TABLE genres (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

INSERT INTO genres (id, name) VALUES (1, 'Action');
INSERT INTO genres (id, name) VALUES (2, 'Adventure');
INSERT INTO genres (id, name) VALUES (3, 'Racing');
INSERT INTO genres (id, name) VALUES (4, 'Comedy');
INSERT INTO genres (id, name) VALUES (5, 'Avant-garde');
INSERT INTO genres (id, name) VALUES (6, 'Mythology');
INSERT INTO genres (id, name) VALUES (7, 'Mystery');
INSERT INTO genres (id, name) VALUES (8, 'Drama');
INSERT INTO genres (id, name) VALUES (9, 'Fantasy');

CREATE TABLE authors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

-- Anime
INSERT INTO authors (id, name) VALUES (1, 'Masashi Kishimoto'); -- Naruto
INSERT INTO authors (id, name) VALUES (2, 'Eiichiro Oda'); -- One Piece
INSERT INTO authors (id, name) VALUES (3, 'Akira Toriyama'); -- Dragon Ball
INSERT INTO authors (id, name) VALUES (4, 'Hirohiko Araki'); -- Jojo's Bizarre Adventure
INSERT INTO authors (id, name) VALUES (5, 'Yoshihiro Togashi'); -- Hunter x Hunter
INSERT INTO authors (id, name) VALUES (6, 'Kazuki Takahashi'); -- Yu-Gi-Oh!
INSERT INTO authors (id, name) VALUES (7, 'Tite Kubo'); -- Bleach
INSERT INTO authors (id, name) VALUES (8, 'Kohei Horikoshi'); -- My Hero Academia
INSERT INTO authors (id, name) VALUES (9, 'Yukito Kishiro'); -- Battle Angel Alita
INSERT INTO authors (id, name) VALUES (10, 'Kentaro Miura'); -- Berserk
-- Manga
INSERT INTO authors (id, name) VALUES (11, 'Ai Yazawa'); -- Nana
INSERT INTO authors (id, name) VALUES (12, 'Hiro Mashima'); -- Fairy Tail
INSERT INTO authors (id, name) VALUES (13, 'Nobuhiro Watsuki'); -- Rurouni Kenshin
INSERT INTO authors (id, name) VALUES (14, 'Yoshiyuki Sadamoto'); -- Neon Genesis Evangelion
INSERT INTO authors (id, name) VALUES (15, 'Kazue Kato'); -- Blue Exorcist
INSERT INTO authors (id, name) VALUES (16, 'Yuki Tabata'); -- Black Clover


CREATE TABLE library (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    image VARCHAR(255),
    author_id INT,
    category_id INT,
    genre_id INT,
    release_date DATE,
    FOREIGN KEY (author_id) REFERENCES authors(id),
    FOREIGN KEY (category_id) REFERENCES categories(id),
    FOREIGN KEY (genre_id) REFERENCES genres(id)
);

INSERT INTO library (id, title, image, author_id, category_id, genre_id, release_date) VALUES 
(1, 'Naruto', 'https://cdn.myanimelist.net/images/anime/1141/142503.jpg', 1, 1, 1, '2002-09-21');

INSERT INTO library (id, title, image, author_id, category_id, genre_id, release_date) VALUES 
(2, 'One Piece', 'https://cdn.myanimelist.net/images/anime/1244/138851.jpg', 2, 1, 1, '1999-07-22');

INSERT INTO library (id, title, image, author_id, category_id, genre_id, release_date) VALUES 
(3, 'Dragon Ball', 'https://cdn.myanimelist.net/images/anime/1887/92364.jpg', 3, 1, 2, '1984-11-20');

INSERT INTO library (id, title, image, author_id, category_id, genre_id, release_date) VALUES 
(4, 'Jojo''s Bizarre Adventure', 'https://cdn.myanimelist.net/images/anime/3/40409.jpg', 4, 1, 2, '1987-01-01');

INSERT INTO library (id, title, image, author_id, category_id, genre_id, release_date) VALUES 
(5, 'Hunter x Hunter', 'https://cdn.myanimelist.net/images/anime/1337/99013.jpg', 5, 1, 9, '1998-03-03');

INSERT INTO library (id, title, image, author_id, category_id, genre_id, release_date) VALUES 
(6, 'Yu-Gi-Oh!', 'https://cdn.myanimelist.net/images/anime/4/47487.jpg', 6, 1, 9, '1996-09-30');

INSERT INTO library (id, title, image, author_id, category_id, genre_id, release_date) VALUES 
(7, 'Bleach', 'https://cdn.myanimelist.net/images/anime/3/40451.jpg', 7, 1, 1, '2001-08-07');

INSERT INTO library (id, title, image, author_id, category_id, genre_id, release_date) VALUES 
(8, 'My Hero Academia', 'https://cdn.myanimelist.net/images/anime/10/78745.jpg', 8, 1, 1, '2014-07-07');

INSERT INTO library (id, title, image, author_id, category_id, genre_id, release_date) VALUES 
(9, 'Battle Angel Alita', 'https://cdn.myanimelist.net/images/anime/11/41257.jpg', 9, 1, 8, '1990-12-06');

INSERT INTO library (id, title, image, author_id, category_id, genre_id, release_date) VALUES 
(10, 'Berserk', 'https://cdn.myanimelist.net/images/anime/10/79352.jpg', 10, 1, 2, '1989-08-25');

INSERT INTO library (id, title, image, author_id, category_id, genre_id, release_date) VALUES 
(11, 'Nana', 'https://cdn.myanimelist.net/images/manga/1/262324.jpg', 11, 2, 8, '2000-05-15');

INSERT INTO library (id, title, image, author_id, category_id, genre_id, release_date) VALUES 
(12, 'Fairy Tail', 'https://cdn.myanimelist.net/images/manga/3/198604.jpg', 12, 2, 9, '2006-08-23');

INSERT INTO library (id, title, image, author_id, category_id, genre_id, release_date) VALUES 
(13, 'Rurouni Kenshin', 'https://cdn.myanimelist.net/images/manga/2/127583.jpg', 13, 2, 8, '1994-04-25');

INSERT INTO library (id, title, image, author_id, category_id, genre_id, release_date) VALUES 
(14, 'Neon Genesis Evangelion', 'https://cdn.myanimelist.net/images/manga/1/145061.jpg', 14, 2, 7, '1994-12-26');

INSERT INTO library (id, title, image, author_id, category_id, genre_id, release_date) VALUES 
(15, 'Blue Exorcist', 'https://cdn.myanimelist.net/images/manga/2/188810.jpg', 15, 2, 9, '2009-04-04');

INSERT INTO library (id, title, image, author_id, category_id, genre_id, release_date) VALUES 
(16, 'Black Clover', 'https://cdn.myanimelist.net/images/manga/2/166254.jpg', 16, 2, 9, '2015-02-16');

-- SELECT title, image, authors.name AS author, categories.name AS category, genres.name AS genre 
-- FROM library
-- INNER JOIN authors on library.author_id = authors.id
-- INNER JOIN categories on library.category_id = categories.id
-- INNER JOIN genres on library.genre_id = genres.id