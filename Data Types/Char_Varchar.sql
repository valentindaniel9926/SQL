CREATE DATABASE data_types;

CREATE TABLE dogs(name CHAR(5), breed varchar(10));

INSERT INTO dogs(name,breed) 
VALUES ('ROCO', 'Haschi'),
       ('Rex', 'corgi'),
       ('Sara Foster', 'Golden Retriever');
       
SELECT * FROM dogs;