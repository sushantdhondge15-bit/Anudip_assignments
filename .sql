mysql> show databases;
+---------------------------+
| Database                  |
+---------------------------+
| e_commerce                |
| information_schema        |
| mysql                     |
| performance_schema        |
| sakila                    |
| student                   |
| student_management_system |
| sys                       |
| world                     |
+---------------------------+
9 rows in set (0.01 sec)

mysql> use e_commerce;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| orders               |
| product              |
+----------------------+
3 rows in set (0.01 sec)

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| customer_id | varchar(5)  | NO   | PRI | NULL    |       |
| name        | varchar(10) | NO   |     | NULL    |       |
| city        | varchar(10) | NO   |     | NULL    |       |
| email_id    | varchar(20) | NO   |     | NULL    |       |
| address     | varchar(50) | NO   |     | NULL    |       |
| phone_no    | varchar(10) | NO   |     | NULL    |       |
| pincode     | int         | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| Customer_id  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(5)  | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> desc product;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| product_id     | varchar(10) | NO   | PRI | NULL    |       |
| product_name   | varchar(10) | NO   |     | NULL    |       |
| category       | varchar(5)  | NO   |     | NULL    |       |
| sub_category   | varchar(10) | NO   |     | NULL    |       |
| original_price | double      | NO   |     | NULL    |       |
| selling_price  | varchar(10) | NO   |     | NULL    |       |
| product_stock  | varchar(20) | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> sslect * from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'sslect * from customer' at line 1
mysql> select * from customer;
Empty set (0.01 sec)

mysql> insert into customer(customer_id, name, city, email_id, address, phone_no, pincode)values(^C
mysql> insert into customer(customer_id, name, city, email_id, address, phone_no, pincode)values('c101', 'sushant', 'panvel', 'sus@gmail.com', 'khandacolony', '8591358636', '410206');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer(customer_id, name, city, email_id, address, phone_no, pincode)values('c102', 'harsh', 'panvel', 'harsh@gmail.com', 'khandacolony', '6451395265', '410206');
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+---------+--------+-----------------+--------------+------------+---------+
| customer_id | name    | city   | email_id        | address      | phone_no   | pincode |
+-------------+---------+--------+-----------------+--------------+------------+---------+
| c101        | sushant | panvel | sus@gmail.com   | khandacolony | 8591358636 |  410206 |
| c102        | harsh   | panvel | harsh@gmail.com | khandacolony | 6451395265 |  410206 |
+-------------+---------+--------+-----------------+--------------+------------+---------+
2 rows in set (0.00 sec)

mysql> select customer_id, name from customer;
+-------------+---------+
| customer_id | name    |
+-------------+---------+
| c101        | sushant |
| c102        | harsh   |
+-------------+---------+
2 rows in set (0.00 sec)

mysql> insert into customer values('c103', 'aryan', 'pen', 'aryan@gmail.com', 'belavli', '6459154365', '410205'), ( 'c104', 'aditya', 'rasayani', 'aditya@gmail.com', 'mohopada', '4563236546', '410205');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-------------+---------+----------+------------------+--------------+------------+---------+
| customer_id | name    | city     | email_id         | address      | phone_no   | pincode |
+-------------+---------+----------+------------------+--------------+------------+---------+
| c101        | sushant | panvel   | sus@gmail.com    | khandacolony | 8591358636 |  410206 |
| c102        | harsh   | panvel   | harsh@gmail.com  | khandacolony | 6451395265 |  410206 |
| c103        | aryan   | pen      | aryan@gmail.com  | belavli      | 6459154365 |  410205 |
| c104        | aditya  | rasayani | aditya@gmail.com | mohopada     | 4563236546 |  410205 |
+-------------+---------+----------+------------------+--------------+------------+---------+
4 rows in set (0.00 sec)

mysql> alter table customer modify customer_id varchar(10) not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| customer_id | varchar(10) | NO   | PRI | NULL    |       |
| name        | varchar(10) | NO   |     | NULL    |       |
| city        | varchar(10) | NO   |     | NULL    |       |
| email_id    | varchar(20) | NO   |     | NULL    |       |
| address     | varchar(50) | NO   |     | NULL    |       |
| phone_no    | varchar(10) | NO   |     | NULL    |       |
| pincode     | int         | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> alter table customer add bill_no int not null;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| customer_id | varchar(10) | NO   | PRI | NULL    |       |
| name        | varchar(10) | NO   |     | NULL    |       |
| city        | varchar(10) | NO   |     | NULL    |       |
| email_id    | varchar(20) | NO   |     | NULL    |       |
| address     | varchar(50) | NO   |     | NULL    |       |
| phone_no    | varchar(10) | NO   |     | NULL    |       |
| pincode     | int         | NO   |     | NULL    |       |
| bill_no     | int         | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> alter table customer add state varchar(10) not null, add country varchar(10) not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| customer_id | varchar(10) | NO   | PRI | NULL    |       |
| name        | varchar(10) | NO   |     | NULL    |       |
| city        | varchar(10) | NO   |     | NULL    |       |
| email_id    | varchar(20) | NO   |     | NULL    |       |
| address     | varchar(50) | NO   |     | NULL    |       |
| phone_no    | varchar(10) | NO   |     | NULL    |       |
| pincode     | int         | NO   |     | NULL    |       |
| bill_no     | int         | NO   |     | NULL    |       |
| state       | varchar(10) | NO   |     | NULL    |       |
| country     | varchar(10) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> alter table customer change column name customer_name varchar(10) not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| customer_id   | varchar(10) | NO   | PRI | NULL    |       |
| customer_name | varchar(10) | NO   |     | NULL    |       |
| city          | varchar(10) | NO   |     | NULL    |       |
| email_id      | varchar(20) | NO   |     | NULL    |       |
| address       | varchar(50) | NO   |     | NULL    |       |
| phone_no      | varchar(10) | NO   |     | NULL    |       |
| pincode       | int         | NO   |     | NULL    |       |
| bill_no       | int         | NO   |     | NULL    |       |
| state         | varchar(10) | NO   |     | NULL    |       |
| country       | varchar(10) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> alter table customer change column customer_id Customer_ID varchar(10) not null;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Customer_ID   | varchar(10) | NO   | PRI | NULL    |       |
| customer_name | varchar(10) | NO   |     | NULL    |       |
| city          | varchar(10) | NO   |     | NULL    |       |
| email_id      | varchar(20) | NO   |     | NULL    |       |
| address       | varchar(50) | NO   |     | NULL    |       |
| phone_no      | varchar(10) | NO   |     | NULL    |       |
| pincode       | int         | NO   |     | NULL    |       |
| bill_no       | int         | NO   |     | NULL    |       |
| state         | varchar(10) | NO   |     | NULL    |       |
| country       | varchar(10) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> create table demo(id varchar(10)not null primary key, name varchar(20) not null);
Query OK, 0 rows affected (0.05 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(10) | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table demo drop primary key;
Query OK, 0 rows affected (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(10) | NO   |     | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table demo add primary key(id);
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(10) | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table demo add primary key(name);
ERROR 1068 (42000): Multiple primary key defined
mysql> alter table demo drop primary key;
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table demo add primary key(name);
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(10) | NO   |     | NULL    |       |
| name  | varchar(20) | NO   | PRI | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> delete from customer where Customer_ID = 'c103';
Query OK, 1 row affected (0.03 sec)

mysql> desc customer;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Customer_ID   | varchar(10) | NO   | PRI | NULL    |       |
| customer_name | varchar(10) | NO   |     | NULL    |       |
| city          | varchar(10) | NO   |     | NULL    |       |
| email_id      | varchar(20) | NO   |     | NULL    |       |
| address       | varchar(50) | NO   |     | NULL    |       |
| phone_no      | varchar(10) | NO   |     | NULL    |       |
| pincode       | int         | NO   |     | NULL    |       |
| bill_no       | int         | NO   |     | NULL    |       |
| state         | varchar(10) | NO   |     | NULL    |       |
| country       | varchar(10) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+---------------+----------+------------------+--------------+------------+---------+---------+-------+---------+
| Customer_ID | customer_name | city     | email_id         | address      | phone_no   | pincode | bill_no | state | country |
+-------------+---------------+----------+------------------+--------------+------------+---------+---------+-------+---------+
| c101        | sushant       | panvel   | sus@gmail.com    | khandacolony | 8591358636 |  410206 |       0 |       |         |
| c102        | harsh         | panvel   | harsh@gmail.com  | khandacolony | 6451395265 |  410206 |       0 |       |         |
| c104        | aditya        | rasayani | aditya@gmail.com | mohopada     | 4563236546 |  410205 |       0 |       |         |
+-------------+---------------+----------+------------------+--------------+------------+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> delete from customer where Customer_ID = 'c104';
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+---------------+--------+-----------------+--------------+------------+---------+---------+-------+---------+
| Customer_ID | customer_name | city   | email_id        | address      | phone_no   | pincode | bill_no | state | country |
+-------------+---------------+--------+-----------------+--------------+------------+---------+---------+-------+---------+
| c101        | sushant       | panvel | sus@gmail.com   | khandacolony | 8591358636 |  410206 |       0 |       |         |
| c102        | harsh         | panvel | harsh@gmail.com | khandacolony | 6451395265 |  410206 |       0 |       |         |
+-------------+---------------+--------+-----------------+--------------+------------+---------+---------+-------+---------+
2 rows in set (0.00 sec)

mysql> truncate table orders;
Query OK, 0 rows affected (0.08 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| Customer_id  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(5)  | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> truncate table customer;
ERROR 1701 (42000): Cannot truncate a table referenced in a foreign key constraint (`e_commerce`.`orders`, CONSTRAINT `orders_ibfk_1`)
mysql> truncate table demo;
Query OK, 0 rows affected (0.06 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(10) | NO   |     | NULL    |       |
| name  | varchar(20) | NO   | PRI | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> insert into demo values('a1', 'Sushant');
Query OK, 1 row affected (0.01 sec)

mysql> select * from demo;
+----+---------+
| id | name    |
+----+---------+
| a1 | Sushant |
+----+---------+
1 row in set (0.00 sec)

mysql> truncate demo;
Query OK, 0 rows affected (0.07 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(10) | NO   |     | NULL    |       |
| name  | varchar(20) | NO   | PRI | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> select * from demo;
Empty set (0.00 sec)

mysql> drop table orders;
Query OK, 0 rows affected (0.04 sec)

mysql> select * from orders;
ERROR 1146 (42S02): Table 'e_commerce.orders' doesn't exist