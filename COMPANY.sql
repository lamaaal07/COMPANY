use company;



create table DEPARTMENT (
    Dname VARCHAR(15) NOT NULL,
    Dnumber INT NOT NULL,
    Mgr_ssn CHAR(9) NOT NULL,
    Mgr_start_date DATE,
    PRIMARY KEY (Dnumber),
    UNIQUE (Dname)
);

CREATE TABLE EMPLOYEE (
    Fname VARCHAR(15) NOT NULL,
    Minit CHAR,
    Lname VARCHAR(15) NOT NULL,
    Ssn CHAR(9) NOT NULL,
    Bdate DATE,
    Address VARCHAR(30),
    Sex CHAR,
    Salary DECIMAL(10,2),
    Super_ssn CHAR(9),
    Dno INT NOT NULL,
    PRIMARY KEY (Ssn)
);

CREATE TABLE PROJECT (
    ProjectNumber INT PRIMARY KEY,
    ProjectName VARCHAR(15),
    Location VARCHAR(15),
    DeptNo INT,
    FOREIGN KEY (Dnumber) REFERENCES DEPARTMENT(Dnumber)
);

CREATE TABLE DEPARTMENT_MANAGER (
    DeptNo INT,                                     
    EmpID INT,                                     
    StartDate DATE NOT NULL,                        
    PRIMARY KEY (DeptNo, EmpID),                     
    FOREIGN KEY (Dnumber) REFERENCES DEPARTMENT(Dnumber),  
    FOREIGN KEY (Ssn) REFERENCES EMPLOYEE(Ssn)   
);





