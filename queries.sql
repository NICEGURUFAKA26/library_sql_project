{\rtf1\ansi\ansicpg1252\cocoartf2868
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 SELECT book_name, COUNT(*) AS popularity\
FROM books_in_use\
JOIN books ON books_in_use.book_num = books.book_num\
GROUP BY book_name\
ORDER BY popularity DESC;\
\
SELECT reader_name, SUM(fine_amount) AS debt\
FROM books_in_use\
JOIN readers ON books_in_use.reader_num = readers.reader_num\
WHERE fine_amount > 0\
GROUP BY reader_name;\
\
SELECT book_name\
FROM books\
LEFT JOIN books_in_use ON books.book_num = books_in_use.book_num\
WHERE books_in_use.book_num IS NULL;}