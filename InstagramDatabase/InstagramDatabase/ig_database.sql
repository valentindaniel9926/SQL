CREATE DATABASE ig_clone;
USE ig_clone;


CREATE TABLE users
(
id INTEGER AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(255) UNIQUE,
created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO users(username) 
VALUES ('Valentin'),
       ('Daniel'),
       ('Mitroi');
       
       
       
CREATE TABLE photos
(
id INTEGER AUTO_INCREMENT PRIMARY KEY,
image_url VARCHAR(100) NOT NULL,
user_id INTEGER NOT NULL,
FOREIGN KEY(user_id) REFERENCES users(id),
created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO photos(image_url,user_id) VALUES('/building',1),
                      ('/mountainlandscape',2),
                      ('/sunset',2);
                          
SELECT photos.image_url,users.username FROM photos 
JOIN users ON photos.user_id=users.id;




CREATE TABLE comments
(
id INTEGER AUTO_INCREMENT PRIMARY KEY,
comment_text VARCHAR(255) NOT NULL,
user_id INTEGER NOT NULL,
photo_id INTEGER  NOT NULL,
FOREIGN KEY(user_id) REFERENCES users(id),
FOREIGN KEY(photo_id) REFERENCES photos(id),    
created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO comments(comment_text,user_id,photo_id) 
VALUES('WOW,what a beautiful building',1,1),
       ('Amazing shot!',2,2),
       ('What a beautiful mountain',3,3);


CREATE TABLE likes
(
user_id INTEGER NOT NULL,
photo_id INTEGER NOT NULL,
created_at TIMESTAMP DEFAULT NOW(),
FOREIGN KEY(user_id) REFERENCES users(id),
FOREIGN KEY(photo_id) REFERENCES photos(id),
 PRIMARY KEY(user_id,photo_id)
);

INSERT INTO likes(user_id,photo_id) 
VALUES (1,1),
       (2,1),
       (1,2),
       (1,3),
       (3,3);
       
       

CREATE TABLE follows (
    follower_id INTEGER NOT NULL,
    followee_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(follower_id) REFERENCES users(id),
    FOREIGN KEY(followee_id) REFERENCES users(id),
    PRIMARY KEY(follower_id, followee_id)
);

INSERT INTO follows(follower_id,followee_id) 
VALUES (1,2),
       (1,3),
       (3,1),
       (2,3);
       
       
 CREATE TABLE tags (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  tag_name VARCHAR(255) UNIQUE,
  created_at TIMESTAMP DEFAULT NOW()
);


CREATE TABLE photo_tags (
    photo_id INTEGER NOT NULL,
    tag_id INTEGER NOT NULL,
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    FOREIGN KEY(tag_id) REFERENCES tags(id),
    PRIMARY KEY(photo_id, tag_id)
);

INSERT INTO tags(tag_name) VALUES ('adorable'),
('beautiful'),
('cute');

INSERT INTO photo_tags(photo_id,tag_id) VALUES (1,1),
(1,2),
(2,3),
(3,2);