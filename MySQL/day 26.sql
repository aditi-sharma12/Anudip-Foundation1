create table employee(
	name varchar(30),
    age int,
    city vARCHAR(30),
    check(age>=18)
);

INSERT INTO EMPLOYEE(AGE) VALUES(17);
INSERT INTO EMPLOYEE(AGE) VALUES(18);