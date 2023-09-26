SELECT * FROM empdb.employee;
use empdb;
ALTER TABLE `empdb`.`employee` 
ADD COLUMN `did` INT NOT NULL AFTER `salary`;

ALTER TABLE employee
DROP COLUMN deptid;
insert into employee(empId,employeename,salary,did)
values
(1,'Sanket',50000,101),
(2,'Shekhar',60000,102),
(3,'Pranay',70000,103),
(4,'Chetan',80000,104),
(5,'Abhishek',90000,105);

insert into department(deptid,deptname,location)
values
(101,'Sanket','Sangli'),
(102,'Shekhar','Satara'),
(103,'Pranay','Nagpur'),
(104,'Chetan','Solapur'),
(105,'Abhishek','Miraj');


select * from employee as e 
inner join department as d
on e.did=d.deptid;