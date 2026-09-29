create table sales
(
order_id int primary key,
order_date date,
employee_id int,
employee_name varchar(50),
department varchar(50),
city varchar(50),
product varchar(50),
quantity int,
unit_price int,
net_sales int,
profit int
);

insert into sales
(order_id, order_date, employee_id, employee_name, department, city, product, quantity, unit_price, net_sales, profit)
values
(1001, '2026-01-05', 101, 'Amit', 'Sales', 'Gopalganj', 'Laptop', 2, 55000, 110000, 18000),
(1002, '2026-01-07', 102, 'Ravi', 'Sales', 'Hathua', 'Mobile', 5, 18000, 90000, 12000),
(1003, '2026-01-10', 103, 'Neha', 'Marketing', 'Barauli', 'Tablet', 3, 25000, 75000, 10500),
(1004, '2026-01-12', 104, 'Priya', 'Sales', 'Thawe', 'Laptop', 1, 55000, 55000, 9000),
(1005, '2026-01-15', 105, 'Rahul', 'Finance', 'Bhorey', 'Monitor', 4, 12000, 48000, 7200),
(1006, '2026-01-18', 106, 'Suman', 'Sales', 'Kuchaikote', 'Mobile', 7, 18000, 126000, 17500),
(1007, '2026-01-20', 107, 'Ankit', 'IT', 'Gopalganj', 'Keyboard', 10, 1500, 15000, 4000),
(1008, '2026-01-22', 108, 'Pooja', 'Marketing', 'Hathua', 'Laptop', 2, 55000, 110000, 17000),
(1009, '2026-01-25', 109, 'Vikas', 'Sales', 'Barauli', 'Tablet', 4, 25000, 100000, 14000),
(1010, '2026-01-28', 110, 'Kiran', 'Finance', 'Thawe', 'Mobile', 6, 18000, 108000, 15000),
(1011, '2026-02-02', 101, 'Amit', 'Sales', 'Gopalganj', 'Monitor', 5, 12000, 60000, 8500),
(1012, '2026-02-05', 102, 'Ravi', 'Sales', 'Hathua', 'Laptop', 3, 55000, 165000, 25000),
(1013, '2026-02-08', 103, 'Neha', 'Marketing', 'Barauli', 'Mobile', 8, 18000, 144000, 21000),
(1014, '2026-02-11', 104, 'Priya', 'Sales', 'Thawe', 'Tablet', 5, 25000, 125000, 18000),
(1015, '2026-02-14', 105, 'Rahul', 'Finance', 'Bhorey', 'Laptop', 2, 55000, 110000, 16000),
(1016, '2026-02-17', 106, 'Suman', 'Sales', 'Kuchaikote', 'Monitor', 7, 12000, 84000, 12000),
(1017, '2026-02-20', 107, 'Ankit', 'IT', 'Gopalganj', 'Keyboard', 15, 1500, 22500, 6000),
(1018, '2026-02-23', 108, 'Pooja', 'Marketing', 'Hathua', 'Laptop', 4, 55000, 220000, 32000),
(1019, '2026-02-26', 109, 'Vikas', 'Sales', 'Barauli', 'Mobile', 10, 18000, 180000, 26000),
(1020, '2026-02-28', 110, 'Kiran', 'Finance', 'Thawe', 'Tablet', 6, 25000, 150000, 22000),
(1021, '2026-03-03', 101, 'Amit', 'Sales', 'Gopalganj', 'Laptop', 3, 55000, 165000, 24000),
(1022, '2026-03-06', 102, 'Ravi', 'Sales', 'Hathua', 'Monitor', 8, 12000, 96000, 14000),
(1023, '2026-03-09', 103, 'Neha', 'Marketing', 'Barauli', 'Mobile', 6, 18000, 108000, 15500),
(1024, '2026-03-12', 104, 'Priya', 'Sales', 'Thawe', 'Laptop', 2, 55000, 110000, 16000),
(1025, '2026-03-15', 105, 'Rahul', 'Finance', 'Bhorey', 'Tablet', 7, 25000, 175000, 25000),
(1026, '2026-03-18', 106, 'Suman', 'Sales', 'Kuchaikote', 'Mobile', 9, 18000, 162000, 23000),
(1027, '2026-03-21', 107, 'Ankit', 'IT', 'Gopalganj', 'Monitor', 6, 12000, 72000, 10500),
(1028, '2026-03-24', 108, 'Pooja', 'Marketing', 'Hathua', 'Laptop', 3, 55000, 165000, 24000),
(1029, '2026-03-27', 109, 'Vikas', 'Sales', 'Barauli', 'Tablet', 8, 25000, 200000, 29000),
(1030, '2026-03-30', 110, 'Kiran', 'Finance', 'Thawe', 'Mobile', 7, 18000, 126000, 18000);