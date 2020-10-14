CREATE DATABASE IF NOT EXISTS employees;
use employees;

#Create Tables
CREATE TABLE IF NOT EXISTS department
(
    id   bigint unsigned PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) -- возможно enum лучше
) CHARACTER SET utf8mb4
  COLLATE utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS employee
(
    id            bigint unsigned PRIMARY KEY AUTO_INCREMENT,
    department_id bigint unsigned NOT NULL,

    first_name    varchar(255)    NOT NULL,
    last_name     varchar(255),
    middle_name   varchar(255),
    role_id       bigint unsigned NOT NULL,
    boss          tinyint      DEFAULT 0,    -- true (1) - если у него есь подчиненные
    boss_id       varchar(255) DEFAULT NULL, -- id сотрудника, кто его прямой руководитель

    CONSTRAINT employee_department_id
        FOREIGN KEY (department_id) REFERENCES department (id)
            ON UPDATE CASCADE
            ON DELETE RESTRICT
) CHARACTER SET utf8mb4
  COLLATE utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS roles -- после уже подумал, надо было назвать таблицу position
(
    id   bigint unsigned PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) NOT NULL -- возможно enum лучше

) CHARACTER SET utf8mb4
  COLLATE utf8mb4_general_ci;

#Scaffold Tables
INSERT INTO department (name)
VALUES ("Ком. департамент"),
       ("Технический департамент"),
       ("Отдел кадров"),
       ("IT департамент"),
       ("Директор");


# только для примера наполнения бд
# возможно какие то сотрудники попадут не к верным отделам и так далее,
# цифры старался составить подходящее
# на проде не использовать ))
INSERT INTO employee (first_name, department_id, role_id, boss, boss_id)
VALUES ("Сашок дир", 5, 1, 1, 0),
       ("Александр", 1, 2, 1, 0),
       ("Сергей", 2, 3, 1, 0),
       ("Виталий", 3, 4, 1, 0),
       ("Андрей", 4, 5, 1, 0),
       ("Егор", 3, 6, 0, 1),
       ("Самуил", 3, 7, 0, 2),
       ("Григорий", 3, 8, 0, 3),
       ("Олег", 4, 9, 0, 4),
       ("Алексей", 4, 9, 0, 5),
       ("Алексей", 4, 9, 0, 5),
       ("Алексей1", 4, 9, 0, 5),
       ("Алексей2", 5, 11, 0, 1),
       ("Алексей3", 4, 9, 0, 2),
       ("Алексей4", 3, 8, 0, 3),
       ("Алексей5", 2, 7, 0, 4),
       ("Алексей6", 3, 6, 0, 3),
       ("Алексей7", 2, 7, 0, 4),
       ("Алексей8", 1, 7, 0, 2),
       ("Алексей9", 3, 8, 0, 3),
       ("Алексей10", 2, 9, 0, 4),
       ("Алексей11", 4, 9, 0, 5),
       ("Алексей12", 4, 9, 0, 5),
       ("Алексей13", 4, 9, 0, 5),
       ("Алексей14", 4, 9, 0, 5),
       ("Алексей15", 4, 9, 0, 5),
       ("Николай2", 4, 9, 0, 5);

INSERT INTO roles (name)
VALUES ("Директор"),
       ("Коммерческий директор"),
       ("Технический директор"),
       ("Директор отдела кадров"),
       ("Директор IT"),
       ("Другой сотрудник отдела продаж"),
       ("Сотрудник отдела продаж"),
       ("Сотрудник отдела кадров"),
       ("Сотрудник отдела IT");


