CREATE TABLE BANK
(
ACCOUNT_NO INT PRIMARY KEY,
NAME VARCHAR(20) ,
ACCOUNT_TYPE varchar(20),
GENDER varchar(20),
AGE INT,
AMOUNT INT
);

INSERT INTO BANK value(01,'Amar','M','SAVINGS',42,8000);
INSERT INTO BANK value(02,'Babu','CURRENTACCOUNT','M',36,4000);
INSERT INTO BANK value(03,'M','Charles','RD',70,5000);
INSERT INTO BANK value(04,'David','FIXED','M',65,100000);
INSERT INTO BANK value(05,'Ekalavya','SAVINGS','M',24,800);
INSERT INTO BANK value(06,'Fabin','CURRENT','M',58,2000);
INSERT INTO BANK value(07,'Govind','RD','M',40,25000);
INSERT INTO BANK value(08,'Harnish','FIXED','M',30,75000);
INSERT INTO BANK value(09,'Irene','SAVINGS','F',28,3900);
INSERT INTO BANK value(10,'James','CURRENT','M',75,8700);
INSERT INTO BANK value(11,'Latha','RD','F',30,200000);

DROP TABLE CUSTOMER;
DROP TABLE BANK;
CREATE TABLE CUSTOMER
(
CUSTOMER_ID INT PRIMARY KEY,
ACCOUNT_NO INT,
CUSTOMER_NAME VARCHAR(20),
C_ADDRESS VARCHAR(20),
C_AGE INT
);
ALTER TABLE CUSTOMER
ADD 
FOREIGN KEY (ACCOUNT_NO) REFERENCES BANK (ACCOUNT_NO);

INSERT INTO CUSTOMER VALUES(01,1,'Amar','MANIPAL',42);

INSERT INTO CUSTOMER VALUES(02,2,'Baby','MANIPAL',36);
INSERT INTO CUSTOMER VALUES(03,3,'Charles','MANIPAL',70);
INSERT INTO CUSTOMER VALUES(04,4,'David','MANIPAL',65);
INSERT INTO CUSTOMER VALUES(05,5,'Ekalavya','MANIPAL',24);
INSERT INTO CUSTOMER VALUES(06,6,'Fabin','MANIPAL',48);
INSERT INTO CUSTOMER VALUES(07,7,'Govind','MANIPAL',40);
INSERT INTO CUSTOMER VALUES(08,8,'Harnish','MANIPAL',30);
INSERT INTO CUSTOMER VALUES(09,9,'Irene','MANIPAL',28);
INSERT INTO CUSTOMER VALUES(10,10,'James','MANIPAL',75);
INSERT INTO CUSTOMER VALUES(11,11,'Latha','MANIPAL',30);

#QUERRY

SELECT BANK.ACCOUNT_NO,CUSTOMER.CUSTOMER_NAME,BANK.AMOUNT,BANK.GENDER,C_AGE,C_ADDRESS,SUM(BANK.AMOUNT*0.50)
FROM(
BANK
INNER JOIN CUSTOMER ON CUSTOMER.ACCOUNT_NO=BANK.ACCOUNT_NO)
WHERE
C_AGE>=50;

SELECT * FROM BANK 
WHERE 
AGE>50;

SELECT BANK.ACCOUNT_NO,CUSTOMER.CUSTOMER_NAME,BANK.AMOUNT,BANK.GENDER,C_AGE,C_ADDRESS,SUM(BANK.AMOUNT*0.25)
FROM(
BANK
INNER JOIN CUSTOMER ON CUSTOMER.ACCOUNT_NO=BANK.ACCOUNT_NO)
WHERE
BANK.GENDER='F';

SELECT BANK.ACCOUNT_NO,CUSTOMER.CUSTOMER_NAME,BANK.AMOUNT,BANK.GENDER,C_AGE,C_ADDRESS,SUM(BANK.AMOUNT*8.75)
FROM(
BANK
INNER JOIN CUSTOMER ON CUSTOMER.ACCOUNT_NO=BANK.ACCOUNT_NO)
WHERE
AGE>25
AND
BANK.GENDER='F';