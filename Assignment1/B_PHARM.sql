CREATE TABLE B_PHARM
(
ROLL_NO INT AUTO_INCREMENT,
UNI_ID VARCHAR(15),
COURSE_ID VARCHAR(15),
COLLEGE_ID INT,
FIRST_NAME VARCHAR(15),
LAST_NAME VARCHAR(15),
B_GENDER VARCHAR(8),
YEAR_OF_ADMISSION INT,
PRESENT_YEAR_IN INT,
PRIMARY KEY(ROLL_NO)
);

INSERT INTO B_PHARM
VALUES
(1,123,'BP','12','ANKITHA','NAYAK','F',2022,1);

INSERT INTO B_PHARM
VALUES
(2,123,'BP','2','ANKITH','NAYAK','M',2022,1);

INSERT INTO B_PHARM
VALUES
(3,123,'BP',3,'BHARATH','RAO','M',2020,2);

INSERT INTO B_PHARM
VALUES
(4,123,'BP',4,'BHARATHI','NAYAK','F',2021,2);

INSERT INTO b_pharm
VALUES
(5,123,'BP',5,'SWATHI','ACHARYA','F',2021,1);

INSERT INTO b_pharm
VALUES
(6,123,'BP',6,'KARTHIK','ACHARYA','M',2020,3);

INSERT INTO B_PHARM
VALUES
(7,123,'BP',7,'JEEZA','MENDONSA','F',2020,3);

INSERT INTO B_PHARM
VALUES
(8,123,'BP',8,'JOY','MENDONSA','M',2019,4);

INSERT INTO B_PHARM
VALUES
(9,123,'BP',9,'RAKSHITHA','SHETTY','F',2021,2);

INSERT INTO B_PHARM
VALUES
(10,123,'BP',10,'RAHUL','PRABHU','M',2022,1);

INSERT INTO B_PHARM
VALUES
(11,123,'BP',11,'SANJANA','NAYAK','F',2019,3);

INSERT INTO B_PHARM
VALUES
(12,123,'BP',12,'RAMYA','BHAT','F',2022,1);

INSERT INTO B_PHARM
VALUES
(13,123,'BP',13,'AKHIL','KAMATH','F',20,2);

INSERT INTO B_PHARM
VALUES
(14,123,'BP',14,'RUHI','PRABHU','F',2020,3);

INSERT INTO B_PHARM
VALUES
(15,123,'BP',15,'ROHAN','RAO','M',2018,4);

SELECT * FROM b_pharm;
