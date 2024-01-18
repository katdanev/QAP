CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL
);

INSERT INTO authors (author_name) VALUES  --add authors
    ('Jack London'),
    ('William Shakespeare'),
	('Arthur Konan Doyle'),
	('Stephen King');
	
CREATE TABLE books ( 
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    publication_year INTEGER,
    author_id INTEGER REFERENCES authors(author_id) ON DELETE CASCADE
);

INSERT INTO books (title, publication_year, author_id) VALUES --add books
    ('The Cold Of The Wild', 1903, 1),
	('Whire Fang', 1906, 1),
    ('Hamlet', 1603, 2),
	('Romeo and Juliet', 1597, 2),
	('The Tempest', 1611, 2),
    ('Sherlock Holmes', 1892, 3),
	('The Hound of the Baskervilles', 1902, 3),
	('It', 1986, 4),
	('Fairy Tale', 2022, 4);
