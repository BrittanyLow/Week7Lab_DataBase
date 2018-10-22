DROP DATABASE if exists NotesDB;
CREATE DATABASE NotesDB;

USE NotesDB;

CREATE TABLE users (
    id INT(3) NOT NULL, 
    cDate DATE NOT NULL, 
    content VARCHAR(10000) NOT NULL, 
    CONSTRAINT PK_id PRIMARY KEY (id));

INSERT INTO note(id, cDate, content);
-- VALUES("admin","password");
COMMIT;


-- id date content 