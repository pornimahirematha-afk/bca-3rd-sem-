USE COLLEGE;
Database changed
mysql> CREATE TABLE department(
    -> dept_id INT PRIMARY KEY,
    -> department VARCHAR(30),
    -> location VARCHAR(30)
    -> );
ERROR 1050 (42S01): Table 'department' already exists
mysql> INSER INTO department VALUES
    -> (1,'BCA','Block A'),
    -> (2,'BCoM','Block B'),
    -> (3,'BBA','Block C');

(1,'BCA','Block A'),
(2,'BCoM','Block B'),
(3,'BBA'' at line 1
mysql> INSER INTO department VALUES
    -> (1,'BCA','Block A'),
    -> (2,'BCoM','Block B'),
    -> (3,'BBA','Block C');

(1,'BCA','Block A'),
(2,'BCoM','Block B'),
(3,'BBA'' at line 1
mysql> INSEERT INTO DEPARMENT VALUES
    ->
    -> (1,'BCA','BLOCK A'),
    -> (2,'BCA'
    ->
    -> INSERT INTO department VALUES
    -> (1,'BCA','Block A'),
    -> (2,'BCoM','Block B'),
    -> (3,'BBA','Block C');


(1,'BCA','BLOCK A'),
(2,'BCA'

INSERT INTO depart' at line 1
mysql>
mysql> INSERT INTO department VALUES
    -> (1,'BCA','Block A'),
    -> (2,'BCoM','Block B'),
    -> (3,'BBA','Block C');
Query OK, 3 rows affected (0.32 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT student.name,
    -> student.department,
    -> department.location
    -> FROM student
    -> INNER JOIN department
    -> ON student.department = department.department;
+-------+------------+----------+
| name  | department | location |
+-------+------------+----------+
| Akash | BCA        | Block A  |
| Ravi  | BCA        | Block A  |
| Priya | BCom       | Block B  |
| Manoj | BCA        | Block A  |
| Anu   | BCom       | Block B  |
| Kiran | BCA        | Block A  |
+-------+------------+----------+
6 rows in set (0.24 sec)

mysql> SELECT student.name,
    -> department.location
    -> FROM student
    -> LEFT JOIN department
    -> ON student.department = department.department
    -> ON student.department = department.department;

mysql> SELECT student.name,
    -> department.location
    -> FROM student
    -> LEFT JOIN department
    -> ON student.department = department.department;
+-------+----------+
| name  | location |
+-------+----------+
| Akash | Block A  |
| Ravi  | Block A  |
| Priya | Block B  |
| Manoj | Block A  |
| Anu   | Block B  |
| Kiran | Block A  |
+-------+----------+
6 rows in set (0.02 sec)

mysql> SELECT student.name,
    -> department.department
    -> FROM student
    -> RIGHT JOIN department
    -> ON student.department = department.department;
+-------+------------+
| name  | department |
+-------+------------+
| Kiran | BCA        |
| Manoj | BCA        |
| Ravi  | BCA        |
| Akash | BCA        |
| Anu   | BCoM       |
| Priya | BCoM       |
| NULL  | BBA        |
+-------+------------+
7 rows in set (0.00 sec)

mysql> SELECT student.name,
    -> department.department
    -> FROM student
    -> CROSS JOIN department;
+-------+------------+
| name  | department |
+-------+------------+
| Akash | BBA        |
| Akash | BCoM       |
| Akash | BCA        |
| Ravi  | BBA        |
| Ravi  | BCoM       |
| Ravi  | BCA        |
| Priya | BBA        |
| Priya | BCoM       |
| Priya | BCA        |
| Manoj | BBA        |
| Manoj | BCoM       |
| Manoj | BCA        |
| Anu   | BBA        |
| Anu   | BCoM       |
| Anu   | BCA        |
| Kiran | BBA        |
| Kiran | BCoM       |
| Kiran | BCA        |
+-------+------------+
18 rows in set (0.00 sec)

mysql> SELECT A.name AS Student1,
    -> B.name AS Student2,
    -> A.department
    -> FROM Student A
    -> JOIN student b
    -> FROM student A
    -> JOIN student B
    -> ON A.department = B.department
    -> WHERE A.id < B.id;

JOIN student B
ON A.department = B.department
WHERE A.id < B.id' at line 6
mysql> SELECT A.name AS Student1,
    -> B.name AS Student2,
    -> A.department
    -> FROM student A
    -> JOIN student B
    -> ON A.department = B.department
    -> WHERE A.id < B.id;
+----------+----------+------------+
| Student1 | Student2 | department |
+----------+----------+------------+
| Akash    | Ravi     | BCA        |
| Akash    | Manoj    | BCA        |
| Akash    | Kiran    | BCA        |
| Ravi     | Manoj    | BCA        |
| Ravi     | Kiran    | BCA        |
| Priya    | Anu      | BCom       |
| Manoj    | Kiran    | BCA        |
+----------+----------+------------+
7 rows in set (0.02 sec)

mysql>
