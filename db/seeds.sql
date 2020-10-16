drop database if exists employeedb;
create database employeedb;
use employeedb; 

insert into department(name)
values
("sales"),
("engineering"),
("finance"),
("legal");
insert into role (title,salary,department_id) 
values
("sales lead",100000,1),
("salesperson",80000,1),
("lead engineer",150000,2),
("software engineer",120000,2),
("accountant",125000,3),
("legal team lead",250000,4),
("lawyer",1900004)
insert into employee (first_name, last_name, role_id, manager_id)
values
('gill','man',1,1),
('bucky','rogers',1,1),
('bb','king',2,2),
('eastbay','ray',2,2),
('mark','duplass',3,3),
('diablo','cote',4,l),
('tom','allen',4,4)
