postgres=# insert into (car_name,car_price,car_year) values('Audi',334,'2020'),('Mersedes',500,'2013');
ОШИБКА:  ошибка синтаксиса (примерное положение: "(")
СТРОКА 1: insert into (car_name,car_price,car_year) values('Audi',334,...
                      ^
postgres=# insert into car (car_name,car_price,car_year) values('Audi',334,'2020'),('Mersedes',500,'2013');
INSERT 0 2
postgres=# select*from car;
 id | car_name | car_price | car_year
----+----------+-----------+----------
  1 | Audi     |       334 | 2020
  2 | Mersedes |       500 | 2013
(2 ёЄЁюъш)


postgres=# alter table car rename to cars;
ALTER TABLE


postgres=# create table employers(id serial primary key,employee_name varchar not null,position varchar);
CREATE TABLE
postgres=# insert into employers(employee_name,position) values ('Argen','Manager'),('Adis','Policman');
INSERT 0 2
postgres=# select*from employers;
 id | employee_name | position
----+---------------+----------
  1 | Argen         | Manager
  2 | Adis          | Policman
(2 ёЄЁюъш)


postgres=# alter table employers
postgres-# alter column position set not null;

      postgres=# create table departments(id serial primary key,department_name varchar);
CREATE TABLE
postgres=# insert into departments (department_name) values ('IT departments'),('Hosp departments');
INSERT 0 2

СТРОКА 2: select*from departments
          ^
postgres=# select*from departments;
 id | department_name
----+------------------
  1 | IT departments
  2 | Hosp departments
(2 ёЄЁюъш)


postgres=# create table salaries(id serial primary key,employee_id int references employers(id),amount decimal not null ,salary_date date not null);
CREATE TABLE
postgres=# insert into salaries(employee_id,amount,salary_date) values (1,50000,'2023.1.2');
INSERT 0 1
postgres=# select*from salaries;
 id | employee_id | amount | salary_date
----+-------------+--------+-------------
  1 |           1 |  50000 | 2023-01-02
(1 ёЄЁюър)

      postgres=# CREATE TABLE projects (project_id SERIAL PRIMARY KEY, project_name VARCHAR(255) NOT NULL, start_date DATE NOT NULL, end_date DATE);
CREATE TABLE
postgres=# INSERT INTO projects (project_name, start_date, end_date) VALUES ('Project A', '2022-01-01', '2022-03-15');
INSERT 0 1
postgres=# alter table projects add constraint project_name unique (project_name);
ALTER TABLE
postgres=# select*from projects;
 project_id | project_name | start_date |  end_date
------------+--------------+------------+------------
          1 | Project A    | 2022-01-01 | 2022-03-15
(1 ёЄЁюър)

