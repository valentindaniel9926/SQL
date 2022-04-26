SELECT username,created_at FROM users ORDER BY  created_at ASC LIMIT 5;

SELECT 
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;

SELECT username FROM users LEFT JOIN photos ON users.id = photos.user_id WHERE image_url IS NULL;
 

SELECT username
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE photos.id IS NULL;

SELECT image_url  FROM photos JOIN likes ON photos.id=likes.photo_id;

SELECT * FROM users JOIN photos ON users.id = photos.user_id;

