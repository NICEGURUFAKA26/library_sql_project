CREATE TABLE readers (
    reader_num INT AUTO_INCREMENT,
    reader_name VARCHAR(100),
    reader_adress VARCHAR(100),
    reader_phone VARCHAR(30) NOT NULL,
    PRIMARY KEY (reader_num)
);

CREATE TABLE books (
    book_num INT AUTO_INCREMENT,
    book_author VARCHAR(100),
    book_name VARCHAR(100),
    book_count INT NOT NULL DEFAULT 0,
    PRIMARY KEY (book_num)
);

CREATE TABLE books_in_use (
    reader_num INT,
    book_num INT,
    issue_date DATE,
    return_date DATE,
    fine_amount DECIMAL(10,2) NOT NULL DEFAULT 0,
    PRIMARY KEY (reader_num, book_num, issue_date),
    FOREIGN KEY (book_num) REFERENCES books(book_num),
    FOREIGN KEY (reader_num) REFERENCES readers(reader_num)
);
