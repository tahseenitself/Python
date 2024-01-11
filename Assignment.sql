-- Table Creation:
-- Create a table named books with columns for book_id, title, author, price, and stock_quantity.
-- Create a table named customers with columns for customer_id, name, email, and address.
-- Create a table named orders with columns for order_id, customer_id, order_date (defaulting to the current timestamp), and total_amount.
-- Data Insertion:
-- Insert at least three book records into the books table.
-- Add two customer records into the customers table.
-- Populate the orders table with two orders, associating them with the customers.
-- Alteration Operations:
-- Add a new column named publication_year to the books table to track the year of publication.
-- Update the price of the book titled "The Great Gatsby" to $11.99.
-- Change the address of the customer named "Bob Smith" to "789 Pine St, Village".
-- Renaming Columns:
-- Rename the address column in the customers table to shipping_address.
-- Dropping Operations:
-- Remove the publication_year column from the books table.
CREATE TABLE BOOKS(
	BOOK_ID SERIAL PRIMARY KEY,
	TITLE VARCHAR(100),
	AUTHOR VARCHAR(100),
	PRICE INT,
	STOCK_QUANTITY INT
);
CREATE TABLE CUSTOMERS(
	CUSTOMER_ID SERIAL PRIMARY KEY,
	NAME VARCHAR(100),
	EMAIL VARCHAR(100),
	ADDRESS VARCHAR(100)
);

CREATE TABLE ORDERS(
	ORDER_ID SERIAL PRIMARY KEY,
	CUSTOMER_ID serial,
	ORDER_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	TOTAL_AMOUNT INT,
	FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID)
);


DROP TABLE customers;
select * from books;
select * from customers;
select * from orders;

INsert into books (TITLE,AUTHOR,PRICE,STOCK_QUANTITY)
values ('Harry Potter','JK Rowling','30',50),('Twilight','Stephanie Maiyer','20','25'),
('The Great Gatsby','Anonymous','15','15');

INSERT INTO CUSTOMERS(NAME,EMAIL,ADDRESS)
VALUES('Aman','chor@gmail.com','chor bazaar'),('Bob Smith','bobbydeoal@gmail.com','10 Downing Street');

insert into orders(customer_id,total_amount)
values(1,200),(2,150);

delete from customers where name='Aman';

Alter table books add column publication_year int;

alter table books alter column price type decimal(10,2);

update books set price=11.99 where title='The Great Gatsby';

update customers set address= '789 Pine St, Village' where name like 'B%';

alter table customers rename address to shiiping_address;

alter table books drop column publication_year;

