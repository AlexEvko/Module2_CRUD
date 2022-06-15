# Module2_CRUD
Задание:
1.	Написать CRUD-приложение. Использовать Spring MVC + Hibernate.
2.	Должен быть класс User с произвольными полями (id, name и т.п.).
3.	В приложении должна быть страница, на которую выводятся все юзеры с возможностью добавлять, удалять и изменять юзера.
4.	Конфигурация Spring через JavaConfig и аннотации, по аналогии с предыдущими проектами. Без использования xml. Без Spring Boot.
5.	Внесите изменения в конфигурацию для работы с базой данных. Вместо SessionFactory должен использоваться EntityManager. 

Для работы приложения в бд должна быть такая таблица:

USE my_db;

CREATE TABLE users (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(15),
  surname varchar(25),
  job varchar(20),
  salary int,
  PRIMARY KEY (id)
) ;

INSERT INTO my_db.users (name, surname, job, salary)
VALUES
 ('Kate', 'Sher', 'Sales', 750),
 ('Oleg', 'Ivanov', 'Teacher', 700),
 ('Nina', 'Petrova', 'HR', 850);
