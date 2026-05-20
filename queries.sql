SELECT book_name, COUNT(*) AS popularity
FROM books_in_use
JOIN books ON books_in_use.book_num = books.book_num
GROUP BY book_name
ORDER BY popularity DESC;

SELECT reader_name, SUM(fine_amount) AS debt
FROM books_in_use
JOIN readers ON books_in_use.reader_num = readers.reader_num
WHERE fine_amount > 0
GROUP BY reader_name;

SELECT book_name
FROM books
LEFT JOIN books_in_use ON books.book_num = books_in_use.book_num
WHERE books_in_use.book_num IS NULL;
