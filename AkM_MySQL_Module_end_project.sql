create database library;
use library;
-- crating tables in database

-- 1.  Branch
create table Branch(Branch_no int  PRIMARY KEY, 
Manager_Id int,
Branch_address varchar(30),
Contact_no varchar(20));

-- 2. Employee
create table Employee(Emp_Id int PRIMARY KEY,
Emp_name varchar(25),
Position varchar(25),
Salary int,
Branch_no int, foreign key (Branch_no) references Branch(Branch_no));

-- 3. Books
create table Books(ISBN varchar(30) PRIMARY KEY,
Book_title varchar(30),
Category varchar(30),
Rental_Price decimal(20,2),
Status enum('yes', 'no'),
Author varchar(30),
Publisher varchar(40));

-- 4. Customer
create table Customer(Customer_Id int PRIMARY KEY ,
Customer_name varchar(30),
Customer_address varchar(50),
Reg_date date);

-- 5. Issue Status
create table IssueStatus(Issue_Id int PRIMARY KEY ,
Issued_cust int,
 Issued_book_name varchar(30),
Issue_date date,
Isbn_book varchar(25),
foreign key(Issued_cust) references Customer(Customer_Id),
foreign key(Isbn_book) references Books(ISBN));

-- 6. ReturnStatus
create table ReturnStatus(Return_Id int PRIMARY KEY ,
Return_cust int,
Return_book_name varchar(30), 
Return_date date,
Isbn_book2 varchar(25),
foreign key(Return_cust) references Customer(Customer_Id),
foreign key(Isbn_book2) references Books(ISBN));

-- insering values
-- 1
INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no) VALUES
(1, 101, '123 Main St', '555-1234'),
(2, 102, '456 Elm St', '555-5678'),
(3, 103, '789 Oak St', '555-9012'),
(4, 104, '101 Maple St', '555-3456'),
(5, 105, '202 Pine St', '555-7890'),
(6, 106, '303 Cedar St', '555-2345'),
(7, 107, '404 Birch St', '555-6789'),
(8, 108, '505 Walnut St', '555-0123'),
(9, 109, '606 Ash St', '555-4567'),
(10, 110, '707 Cherry St', '555-8901');

-- 2
INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no) VALUES
(201, 'John Doe', 'Manager', 60000, 1),
(202, 'Jane Smith', 'Clerk', 30000, 2),
(203, 'Bob Brown', 'Assistant', 35000, 3),
(204, 'Alice Johnson', 'Manager', 65000, 4),
(205, 'Charlie Davis', 'Clerk', 32000, 5),
(206, 'Eve White', 'Assistant', 36000, 6),
(207, 'Frank Green', 'Manager', 70000, 7),
(208, 'Grace Black', 'Clerk', 31000, 8),
(209, 'Hank Blue', 'Assistant', 34000, 9),
(210, 'Ivy Grey', 'Manager', 62000, 10);

-- 3

INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher) VALUES
('978-3-16-148410-0', 'Book One', 'Fiction', 5.99, 'yes', 'Author A', 'Publisher X'),
('978-1-4028-9462-6', 'Book Two', 'Non-Fiction', 6.99, 'yes', 'Author B', 'Publisher Y'),
('978-0-545-01022-1', 'Book Three', 'Fiction', 4.99, 'no', 'Author C', 'Publisher Z'),
('978-0-395-19395-8', 'Book Four', 'Science', 7.99, 'yes', 'Author D', 'Publisher X'),
('978-0-7432-7356-0', 'Book Five', 'History', 8.99, 'no', 'Author E', 'Publisher Y'),
('978-0-307-27778-7', 'Book Six', 'Fiction', 5.49, 'yes', 'Author F', 'Publisher Z'),
('978-0-06-055812-3', 'Book Seven', 'Biography', 6.49, 'no', 'Author G', 'Publisher X'),
('978-0-14-017739-8', 'Book Eight', 'Fiction', 7.49, 'yes', 'Author H', 'Publisher Y'),
('978-0-307-29063-4', 'Book Nine', 'Non-Fiction', 9.99, 'no', 'Author I', 'Publisher Z'),
('978-0-679-64357-5', 'Book Ten', 'Science', 4.49, 'yes', 'Author J', 'Publisher X');

-- 4

INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date) VALUES
(301, 'Michael Brown', '111 First Ave', '2023-01-01'),
(302, 'Sarah Davis', '222 Second Ave', '2023-02-01'),
(303, 'David Wilson', '333 Third Ave', '2023-03-01'),
(304, 'Laura Moore', '444 Fourth Ave', '2023-04-01'),
(305, 'James Taylor', '555 Fifth Ave', '2023-05-01'),
(306, 'Emily Anderson', '666 Sixth Ave', '2023-06-01'),
(307, 'Matthew Thomas', '777 Seventh Ave', '2023-07-01'),
(308, 'Anna Martin', '888 Eighth Ave', '2023-08-01'),
(309, 'Robert Jackson', '999 Ninth Ave', '2023-09-01'),
(310, 'Patricia White', '101 Tenth Ave', '2023-10-01');

-- 5
INSERT INTO IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book) VALUES
(401, 301, 'Book One', '2024-01-01', '978-3-16-148410-0'),
(402, 302, 'Book Two', '2024-01-02', '978-1-4028-9462-6'),
(403, 303, 'Book Three', '2024-01-03', '978-0-545-01022-1'),
(404, 304, 'Book Four', '2024-01-04', '978-0-395-19395-8'),
(405, 305, 'Book Five', '2024-01-05', '978-0-7432-7356-0'),
(406, 306, 'Book Six', '2024-01-06', '978-0-307-27778-7'),
(407, 307, 'Book Seven', '2024-01-07', '978-0-06-055812-3'),
(408, 308, 'Book Eight', '2024-01-08', '978-0-14-017739-8'),
(409, 309, 'Book Nine', '2024-01-09', '978-0-307-29063-4'),
(410, 310, 'Book Ten', '2024-01-10', '978-0-679-64357-5');

-- 6

INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2) VALUES
(501, 301, 'Book One', '2024-02-01', '978-3-16-148410-0'),
(502, 302, 'Book Two', '2024-02-02', '978-1-4028-9462-6'),
(503, 303, 'Book Three', '2024-02-03', '978-0-545-01022-1'),
(504, 304, 'Book Four', '2024-02-04', '978-0-395-19395-8'),
(505, 305, 'Book Five', '2024-02-05', '978-0-7432-7356-0'),
(506, 306, 'Book Six', '2024-02-06', '978-0-307-27778-7'),
(507, 307, 'Book Seven', '2024-02-07', '978-0-06-055812-3'),
(508, 308, 'Book Eight', '2024-02-08', '978-0-14-017739-8'),
(509, 309, 'Book Nine', '2024-02-09', '978-0-307-29063-4'),
(510, 310, 'Book Ten', '2024-02-10', '978-0-679-64357-5');

select * from Books;
select * from Employee;
select * from Customer;
select * from Branch;
select * from IssueStatus;
select * from ReturnStatus;

-- 1. Retrieve the book title, category, and rental price of all available books.
select Book_title, Category, Rental_Price from Books where status = 'yes';

-- 2. List the employee names and their respective salaries in descending order of salary.
select Emp_name, Salary from Employee order by Salary desc;

-- 3. Retrieve the book titles and the corresponding customers who have issued those books.
select b.Book_title, c.Customer_name from IssueStatus i
join Books b on i.Isbn_book = b.ISBN
join Customer c on i.Issued_cust = c.Customer_Id;

-- 4. Display the total count of books in each category.
select Category, count(*) as Total_Books from Books group by Category;

-- 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
select Emp_name, Position from Employee where Salary > 50000;

-- 6. List the customer names who registered before 2022-01-01 and have not issued any books yet.
select Customer_name from Customer where Reg_date < 2022-01-01
and Customer_Id not in (select Issued_cust from IssueStatus);

-- 7. Display the branch numbers and the total count of employees in each branch.
select Branch_no, count(*) as Total_Employees from Employee group by Branch_no;

-- 8. Display the names of customers who have issued books in the month of June 2023.
select distinct c.Customer_name from IssueStatus i 
join Customer c on i.Issued_cust = c.Customer_Id
where year(i.Issue_date) = 2023 and month(i.Issue_date) = 6;

-- 9. Retrieve book_title from book table containing history.
select Book_title from Books where Category = 'Histoty';

-- 10.Retrieve the branch numbers along with the count of
 -- employees for branches having more than 5 employees
 select Branch_no, count(*) as Totaal_Employees from Employee group by Branch_no
 having count(*) > 5;
 













